contract main {




// =====================  Runtime code  =====================


#
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
const deposit = 1


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function sub_0c5de5c3(?) {
    require msg.sender == stor0
    return 1
}

function setJoeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor2 = arg1
}

function sub_09ab59b6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor0
    stor1 = address(arg1)
}

function sub_bc78b3a7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor0
    stor0 = address(arg1)
}

function withdraw() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawCoin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setApprove(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 2
    mem[192] = 2
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.0xd21220a7 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not arg2:
        if not arg2:
            mem[128] = ext_call.return_data[12 len 20]
            if not arg2:
                mem[160] = address(ext_call.return_data[0])
                if not arg2:
                    mem[224] = address(ext_call.return_data[0])
                    if not arg2:
                        mem[256] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(2 * ceil32(return_data.size)) + 324] = arg3
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = arg3
                        mem[(4 * ceil32(return_data.size)) + 324] = 64
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = 224
                        t = (4 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor1)
                        staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        if not arg2:
                            _2509 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2605 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2605
                            require _2509 + (32 * _2605) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2509 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2605:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2605:
                                revert with 'NH{q', 50
                            _4717 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _4717
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _4717, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6445 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6541 = mem[_6445]
                            require mem[_6445] <= test266151307()
                            require _6445 + mem[_6445] + 31 < _6445 + return_data.size
                            _6637 = mem[_6445 + mem[_6445]]
                            if mem[_6445 + mem[_6445]] > test266151307():
                                revert with 'NH{q', 65
                            if _6445 + ceil32(return_data.size) + floor32(mem[_6445 + mem[_6445]]) + 1 > test266151307() or floor32(mem[_6445 + mem[_6445]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6445 + ceil32(return_data.size) + floor32(mem[_6445 + mem[_6445]]) + 1
                            mem[_6445 + ceil32(return_data.size)] = _6637
                            require _6541 + (32 * _6637) + 32 <= return_data.size
                            idx = 0
                            s = _6445 + _6541 + 32
                            t = _6445 + ceil32(return_data.size) + 32
                            while idx < _6637:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6637:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4717
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4717
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7981 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7981] == bool(mem[_7981])
                        else:
                            _2510 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2606 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2606
                            require _2510 + (32 * _2606) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2510 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2606:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2606:
                                revert with 'NH{q', 50
                            _4718 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _4718
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _4718, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6446 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6542 = mem[_6446]
                            require mem[_6446] <= test266151307()
                            require _6446 + mem[_6446] + 31 < _6446 + return_data.size
                            _6638 = mem[_6446 + mem[_6446]]
                            if mem[_6446 + mem[_6446]] > test266151307():
                                revert with 'NH{q', 65
                            if _6446 + ceil32(return_data.size) + floor32(mem[_6446 + mem[_6446]]) + 1 > test266151307() or floor32(mem[_6446 + mem[_6446]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6446 + ceil32(return_data.size) + floor32(mem[_6446 + mem[_6446]]) + 1
                            mem[_6446 + ceil32(return_data.size)] = _6638
                            require _6542 + (32 * _6638) + 32 <= return_data.size
                            idx = 0
                            s = _6446 + _6542 + 32
                            t = _6446 + ceil32(return_data.size) + 32
                            while idx < _6638:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6638:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4718
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4718
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7982 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7982] == bool(mem[_7982])
                    else:
                        mem[256] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(2 * ceil32(return_data.size)) + 324] = arg3
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = arg3
                        mem[(4 * ceil32(return_data.size)) + 324] = 64
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = 224
                        t = (4 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor1)
                        staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        if not arg2:
                            _2511 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2607 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2607
                            require _2511 + (32 * _2607) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2511 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2607:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2607:
                                revert with 'NH{q', 50
                            _4719 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _4719
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _4719, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6447 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6543 = mem[_6447]
                            require mem[_6447] <= test266151307()
                            require _6447 + mem[_6447] + 31 < _6447 + return_data.size
                            _6639 = mem[_6447 + mem[_6447]]
                            if mem[_6447 + mem[_6447]] > test266151307():
                                revert with 'NH{q', 65
                            if _6447 + ceil32(return_data.size) + floor32(mem[_6447 + mem[_6447]]) + 1 > test266151307() or floor32(mem[_6447 + mem[_6447]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6447 + ceil32(return_data.size) + floor32(mem[_6447 + mem[_6447]]) + 1
                            mem[_6447 + ceil32(return_data.size)] = _6639
                            require _6543 + (32 * _6639) + 32 <= return_data.size
                            idx = 0
                            s = _6447 + _6543 + 32
                            t = _6447 + ceil32(return_data.size) + 32
                            while idx < _6639:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6639:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4719
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4719
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7983 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7983] == bool(mem[_7983])
                        else:
                            _2512 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2608 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2608
                            require _2512 + (32 * _2608) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2512 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2608:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2608:
                                revert with 'NH{q', 50
                            _4720 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _4720
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _4720, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6448 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6544 = mem[_6448]
                            require mem[_6448] <= test266151307()
                            require _6448 + mem[_6448] + 31 < _6448 + return_data.size
                            _6640 = mem[_6448 + mem[_6448]]
                            if mem[_6448 + mem[_6448]] > test266151307():
                                revert with 'NH{q', 65
                            if _6448 + ceil32(return_data.size) + floor32(mem[_6448 + mem[_6448]]) + 1 > test266151307() or floor32(mem[_6448 + mem[_6448]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6448 + ceil32(return_data.size) + floor32(mem[_6448 + mem[_6448]]) + 1
                            mem[_6448 + ceil32(return_data.size)] = _6640
                            require _6544 + (32 * _6640) + 32 <= return_data.size
                            idx = 0
                            s = _6448 + _6544 + 32
                            t = _6448 + ceil32(return_data.size) + 32
                            while idx < _6640:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6640:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4720
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4720
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7984 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7984] == bool(mem[_7984])
                else:
                    mem[224] = ext_call.return_data[12 len 20]
                    if not arg2:
                        mem[256] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(2 * ceil32(return_data.size)) + 324] = arg3
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = arg3
                        mem[(4 * ceil32(return_data.size)) + 324] = 64
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = 224
                        t = (4 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor1)
                        staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        if not arg2:
                            _2513 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2609 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2609
                            require _2513 + (32 * _2609) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2513 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2609:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2609:
                                revert with 'NH{q', 50
                            _4721 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _4721
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _4721, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6449 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6545 = mem[_6449]
                            require mem[_6449] <= test266151307()
                            require _6449 + mem[_6449] + 31 < _6449 + return_data.size
                            _6641 = mem[_6449 + mem[_6449]]
                            if mem[_6449 + mem[_6449]] > test266151307():
                                revert with 'NH{q', 65
                            if _6449 + ceil32(return_data.size) + floor32(mem[_6449 + mem[_6449]]) + 1 > test266151307() or floor32(mem[_6449 + mem[_6449]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6449 + ceil32(return_data.size) + floor32(mem[_6449 + mem[_6449]]) + 1
                            mem[_6449 + ceil32(return_data.size)] = _6641
                            require _6545 + (32 * _6641) + 32 <= return_data.size
                            idx = 0
                            s = _6449 + _6545 + 32
                            t = _6449 + ceil32(return_data.size) + 32
                            while idx < _6641:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6641:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4721
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4721
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7985 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7985] == bool(mem[_7985])
                        else:
                            _2514 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2610 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2610
                            require _2514 + (32 * _2610) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2514 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2610:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2610:
                                revert with 'NH{q', 50
                            _4722 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _4722
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _4722, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6450 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6546 = mem[_6450]
                            require mem[_6450] <= test266151307()
                            require _6450 + mem[_6450] + 31 < _6450 + return_data.size
                            _6642 = mem[_6450 + mem[_6450]]
                            if mem[_6450 + mem[_6450]] > test266151307():
                                revert with 'NH{q', 65
                            if _6450 + ceil32(return_data.size) + floor32(mem[_6450 + mem[_6450]]) + 1 > test266151307() or floor32(mem[_6450 + mem[_6450]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6450 + ceil32(return_data.size) + floor32(mem[_6450 + mem[_6450]]) + 1
                            mem[_6450 + ceil32(return_data.size)] = _6642
                            require _6546 + (32 * _6642) + 32 <= return_data.size
                            idx = 0
                            s = _6450 + _6546 + 32
                            t = _6450 + ceil32(return_data.size) + 32
                            while idx < _6642:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6642:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4722
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4722
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7986 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7986] == bool(mem[_7986])
                    else:
                        mem[256] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(2 * ceil32(return_data.size)) + 324] = arg3
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = arg3
                        mem[(4 * ceil32(return_data.size)) + 324] = 64
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = 224
                        t = (4 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor1)
                        staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        if not arg2:
                            _2515 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2611 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2611
                            require _2515 + (32 * _2611) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2515 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2611:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2611:
                                revert with 'NH{q', 50
                            _4723 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _4723
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _4723, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6451 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6547 = mem[_6451]
                            require mem[_6451] <= test266151307()
                            require _6451 + mem[_6451] + 31 < _6451 + return_data.size
                            _6643 = mem[_6451 + mem[_6451]]
                            if mem[_6451 + mem[_6451]] > test266151307():
                                revert with 'NH{q', 65
                            if _6451 + ceil32(return_data.size) + floor32(mem[_6451 + mem[_6451]]) + 1 > test266151307() or floor32(mem[_6451 + mem[_6451]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6451 + ceil32(return_data.size) + floor32(mem[_6451 + mem[_6451]]) + 1
                            mem[_6451 + ceil32(return_data.size)] = _6643
                            require _6547 + (32 * _6643) + 32 <= return_data.size
                            idx = 0
                            s = _6451 + _6547 + 32
                            t = _6451 + ceil32(return_data.size) + 32
                            while idx < _6643:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6643:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4723
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4723
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7987 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7987] == bool(mem[_7987])
                        else:
                            _2516 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2612 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2612
                            require _2516 + (32 * _2612) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2516 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2612:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2612:
                                revert with 'NH{q', 50
                            _4724 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _4724
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _4724, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6452 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6548 = mem[_6452]
                            require mem[_6452] <= test266151307()
                            require _6452 + mem[_6452] + 31 < _6452 + return_data.size
                            _6644 = mem[_6452 + mem[_6452]]
                            if mem[_6452 + mem[_6452]] > test266151307():
                                revert with 'NH{q', 65
                            if _6452 + ceil32(return_data.size) + floor32(mem[_6452 + mem[_6452]]) + 1 > test266151307() or floor32(mem[_6452 + mem[_6452]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6452 + ceil32(return_data.size) + floor32(mem[_6452 + mem[_6452]]) + 1
                            mem[_6452 + ceil32(return_data.size)] = _6644
                            require _6548 + (32 * _6644) + 32 <= return_data.size
                            idx = 0
                            s = _6452 + _6548 + 32
                            t = _6452 + ceil32(return_data.size) + 32
                            while idx < _6644:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6644:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4724
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4724
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7988 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7988] == bool(mem[_7988])
            else:
                mem[160] = ext_call.return_data[12 len 20]
                if not arg2:
                    mem[224] = address(ext_call.return_data[0])
                    if not arg2:
                        mem[256] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(2 * ceil32(return_data.size)) + 324] = arg3
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = arg3
                        mem[(4 * ceil32(return_data.size)) + 324] = 64
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = 224
                        t = (4 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor1)
                        staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        if not arg2:
                            _2517 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2613 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2613
                            require _2517 + (32 * _2613) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2517 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2613:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2613:
                                revert with 'NH{q', 50
                            _4725 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _4725
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _4725, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6453 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6549 = mem[_6453]
                            require mem[_6453] <= test266151307()
                            require _6453 + mem[_6453] + 31 < _6453 + return_data.size
                            _6645 = mem[_6453 + mem[_6453]]
                            if mem[_6453 + mem[_6453]] > test266151307():
                                revert with 'NH{q', 65
                            if _6453 + ceil32(return_data.size) + floor32(mem[_6453 + mem[_6453]]) + 1 > test266151307() or floor32(mem[_6453 + mem[_6453]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6453 + ceil32(return_data.size) + floor32(mem[_6453 + mem[_6453]]) + 1
                            mem[_6453 + ceil32(return_data.size)] = _6645
                            require _6549 + (32 * _6645) + 32 <= return_data.size
                            idx = 0
                            s = _6453 + _6549 + 32
                            t = _6453 + ceil32(return_data.size) + 32
                            while idx < _6645:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6645:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4725
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4725
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7989 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7989] == bool(mem[_7989])
                        else:
                            _2518 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2614 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2614
                            require _2518 + (32 * _2614) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2518 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2614:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2614:
                                revert with 'NH{q', 50
                            _4726 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _4726
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _4726, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6454 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6550 = mem[_6454]
                            require mem[_6454] <= test266151307()
                            require _6454 + mem[_6454] + 31 < _6454 + return_data.size
                            _6646 = mem[_6454 + mem[_6454]]
                            if mem[_6454 + mem[_6454]] > test266151307():
                                revert with 'NH{q', 65
                            if _6454 + ceil32(return_data.size) + floor32(mem[_6454 + mem[_6454]]) + 1 > test266151307() or floor32(mem[_6454 + mem[_6454]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6454 + ceil32(return_data.size) + floor32(mem[_6454 + mem[_6454]]) + 1
                            mem[_6454 + ceil32(return_data.size)] = _6646
                            require _6550 + (32 * _6646) + 32 <= return_data.size
                            idx = 0
                            s = _6454 + _6550 + 32
                            t = _6454 + ceil32(return_data.size) + 32
                            while idx < _6646:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6646:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4726
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4726
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7990 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7990] == bool(mem[_7990])
                    else:
                        mem[256] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(2 * ceil32(return_data.size)) + 324] = arg3
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = arg3
                        mem[(4 * ceil32(return_data.size)) + 324] = 64
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = 224
                        t = (4 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor1)
                        staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        if not arg2:
                            _2519 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2615 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2615
                            require _2519 + (32 * _2615) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2519 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2615:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2615:
                                revert with 'NH{q', 50
                            _4727 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _4727
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _4727, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6455 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6551 = mem[_6455]
                            require mem[_6455] <= test266151307()
                            require _6455 + mem[_6455] + 31 < _6455 + return_data.size
                            _6647 = mem[_6455 + mem[_6455]]
                            if mem[_6455 + mem[_6455]] > test266151307():
                                revert with 'NH{q', 65
                            if _6455 + ceil32(return_data.size) + floor32(mem[_6455 + mem[_6455]]) + 1 > test266151307() or floor32(mem[_6455 + mem[_6455]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6455 + ceil32(return_data.size) + floor32(mem[_6455 + mem[_6455]]) + 1
                            mem[_6455 + ceil32(return_data.size)] = _6647
                            require _6551 + (32 * _6647) + 32 <= return_data.size
                            idx = 0
                            s = _6455 + _6551 + 32
                            t = _6455 + ceil32(return_data.size) + 32
                            while idx < _6647:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6647:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4727
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4727
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7991 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7991] == bool(mem[_7991])
                        else:
                            _2520 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2616 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2616
                            require _2520 + (32 * _2616) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2520 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2616:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2616:
                                revert with 'NH{q', 50
                            _4728 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _4728
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _4728, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6456 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6552 = mem[_6456]
                            require mem[_6456] <= test266151307()
                            require _6456 + mem[_6456] + 31 < _6456 + return_data.size
                            _6648 = mem[_6456 + mem[_6456]]
                            if mem[_6456 + mem[_6456]] > test266151307():
                                revert with 'NH{q', 65
                            if _6456 + ceil32(return_data.size) + floor32(mem[_6456 + mem[_6456]]) + 1 > test266151307() or floor32(mem[_6456 + mem[_6456]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6456 + ceil32(return_data.size) + floor32(mem[_6456 + mem[_6456]]) + 1
                            mem[_6456 + ceil32(return_data.size)] = _6648
                            require _6552 + (32 * _6648) + 32 <= return_data.size
                            idx = 0
                            s = _6456 + _6552 + 32
                            t = _6456 + ceil32(return_data.size) + 32
                            while idx < _6648:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6648:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4728
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4728
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7992 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7992] == bool(mem[_7992])
                else:
                    mem[224] = ext_call.return_data[12 len 20]
                    if not arg2:
                        mem[256] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(2 * ceil32(return_data.size)) + 324] = arg3
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = arg3
                        mem[(4 * ceil32(return_data.size)) + 324] = 64
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = 224
                        t = (4 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor1)
                        staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        if not arg2:
                            _2521 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2617 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2617
                            require _2521 + (32 * _2617) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2521 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2617:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2617:
                                revert with 'NH{q', 50
                            _4729 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _4729
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _4729, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6457 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6553 = mem[_6457]
                            require mem[_6457] <= test266151307()
                            require _6457 + mem[_6457] + 31 < _6457 + return_data.size
                            _6649 = mem[_6457 + mem[_6457]]
                            if mem[_6457 + mem[_6457]] > test266151307():
                                revert with 'NH{q', 65
                            if _6457 + ceil32(return_data.size) + floor32(mem[_6457 + mem[_6457]]) + 1 > test266151307() or floor32(mem[_6457 + mem[_6457]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6457 + ceil32(return_data.size) + floor32(mem[_6457 + mem[_6457]]) + 1
                            mem[_6457 + ceil32(return_data.size)] = _6649
                            require _6553 + (32 * _6649) + 32 <= return_data.size
                            idx = 0
                            s = _6457 + _6553 + 32
                            t = _6457 + ceil32(return_data.size) + 32
                            while idx < _6649:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6649:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4729
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4729
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7993 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7993] == bool(mem[_7993])
                        else:
                            _2522 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2618 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2618
                            require _2522 + (32 * _2618) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2522 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2618:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2618:
                                revert with 'NH{q', 50
                            _4730 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _4730
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _4730, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6458 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6554 = mem[_6458]
                            require mem[_6458] <= test266151307()
                            require _6458 + mem[_6458] + 31 < _6458 + return_data.size
                            _6650 = mem[_6458 + mem[_6458]]
                            if mem[_6458 + mem[_6458]] > test266151307():
                                revert with 'NH{q', 65
                            if _6458 + ceil32(return_data.size) + floor32(mem[_6458 + mem[_6458]]) + 1 > test266151307() or floor32(mem[_6458 + mem[_6458]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6458 + ceil32(return_data.size) + floor32(mem[_6458 + mem[_6458]]) + 1
                            mem[_6458 + ceil32(return_data.size)] = _6650
                            require _6554 + (32 * _6650) + 32 <= return_data.size
                            idx = 0
                            s = _6458 + _6554 + 32
                            t = _6458 + ceil32(return_data.size) + 32
                            while idx < _6650:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6650:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4730
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4730
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7994 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7994] == bool(mem[_7994])
                    else:
                        mem[256] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(2 * ceil32(return_data.size)) + 324] = arg3
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = arg3
                        mem[(4 * ceil32(return_data.size)) + 324] = 64
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = 224
                        t = (4 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor1)
                        staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        if not arg2:
                            _2523 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2619 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2619
                            require _2523 + (32 * _2619) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2523 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2619:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2619:
                                revert with 'NH{q', 50
                            _4731 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _4731
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _4731, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6459 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6555 = mem[_6459]
                            require mem[_6459] <= test266151307()
                            require _6459 + mem[_6459] + 31 < _6459 + return_data.size
                            _6651 = mem[_6459 + mem[_6459]]
                            if mem[_6459 + mem[_6459]] > test266151307():
                                revert with 'NH{q', 65
                            if _6459 + ceil32(return_data.size) + floor32(mem[_6459 + mem[_6459]]) + 1 > test266151307() or floor32(mem[_6459 + mem[_6459]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6459 + ceil32(return_data.size) + floor32(mem[_6459 + mem[_6459]]) + 1
                            mem[_6459 + ceil32(return_data.size)] = _6651
                            require _6555 + (32 * _6651) + 32 <= return_data.size
                            idx = 0
                            s = _6459 + _6555 + 32
                            t = _6459 + ceil32(return_data.size) + 32
                            while idx < _6651:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6651:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4731
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4731
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7995 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7995] == bool(mem[_7995])
                        else:
                            _2524 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2620 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2620
                            require _2524 + (32 * _2620) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2524 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2620:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2620:
                                revert with 'NH{q', 50
                            _4732 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _4732
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _4732, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6460 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6556 = mem[_6460]
                            require mem[_6460] <= test266151307()
                            require _6460 + mem[_6460] + 31 < _6460 + return_data.size
                            _6652 = mem[_6460 + mem[_6460]]
                            if mem[_6460 + mem[_6460]] > test266151307():
                                revert with 'NH{q', 65
                            if _6460 + ceil32(return_data.size) + floor32(mem[_6460 + mem[_6460]]) + 1 > test266151307() or floor32(mem[_6460 + mem[_6460]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6460 + ceil32(return_data.size) + floor32(mem[_6460 + mem[_6460]]) + 1
                            mem[_6460 + ceil32(return_data.size)] = _6652
                            require _6556 + (32 * _6652) + 32 <= return_data.size
                            idx = 0
                            s = _6460 + _6556 + 32
                            t = _6460 + ceil32(return_data.size) + 32
                            while idx < _6652:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6652:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4732
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4732
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7996 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7996] == bool(mem[_7996])
        else:
            require not arg3
            if not arg2:
                mem[128] = ext_call.return_data[12 len 20]
                if not arg2:
                    mem[160] = address(ext_call.return_data[0])
                    if not arg2:
                        mem[224] = address(ext_call.return_data[0])
                        if not arg2:
                            mem[256] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg3
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg3
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2525 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2621 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2621
                                require _2525 + (32 * _2621) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2525 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2621:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2621:
                                    revert with 'NH{q', 50
                                _4733 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4733
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4733, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6461 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6557 = mem[_6461]
                                require mem[_6461] <= test266151307()
                                require _6461 + mem[_6461] + 31 < _6461 + return_data.size
                                _6653 = mem[_6461 + mem[_6461]]
                                if mem[_6461 + mem[_6461]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6461 + ceil32(return_data.size) + floor32(mem[_6461 + mem[_6461]]) + 1 > test266151307() or floor32(mem[_6461 + mem[_6461]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6461 + ceil32(return_data.size) + floor32(mem[_6461 + mem[_6461]]) + 1
                                mem[_6461 + ceil32(return_data.size)] = _6653
                                require _6557 + (32 * _6653) + 32 <= return_data.size
                                idx = 0
                                s = _6461 + _6557 + 32
                                t = _6461 + ceil32(return_data.size) + 32
                                while idx < _6653:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6653:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4733
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4733
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7997 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7997] == bool(mem[_7997])
                            else:
                                _2526 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2622 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2622
                                require _2526 + (32 * _2622) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2526 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2622:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2622:
                                    revert with 'NH{q', 50
                                _4734 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4734
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4734, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6462 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6558 = mem[_6462]
                                require mem[_6462] <= test266151307()
                                require _6462 + mem[_6462] + 31 < _6462 + return_data.size
                                _6654 = mem[_6462 + mem[_6462]]
                                if mem[_6462 + mem[_6462]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6462 + ceil32(return_data.size) + floor32(mem[_6462 + mem[_6462]]) + 1 > test266151307() or floor32(mem[_6462 + mem[_6462]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6462 + ceil32(return_data.size) + floor32(mem[_6462 + mem[_6462]]) + 1
                                mem[_6462 + ceil32(return_data.size)] = _6654
                                require _6558 + (32 * _6654) + 32 <= return_data.size
                                idx = 0
                                s = _6462 + _6558 + 32
                                t = _6462 + ceil32(return_data.size) + 32
                                while idx < _6654:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6654:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4734
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4734
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7998 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7998] == bool(mem[_7998])
                        else:
                            mem[256] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg3
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg3
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2527 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2623 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2623
                                require _2527 + (32 * _2623) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2527 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2623:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2623:
                                    revert with 'NH{q', 50
                                _4735 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4735
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4735, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6463 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6559 = mem[_6463]
                                require mem[_6463] <= test266151307()
                                require _6463 + mem[_6463] + 31 < _6463 + return_data.size
                                _6655 = mem[_6463 + mem[_6463]]
                                if mem[_6463 + mem[_6463]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6463 + ceil32(return_data.size) + floor32(mem[_6463 + mem[_6463]]) + 1 > test266151307() or floor32(mem[_6463 + mem[_6463]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6463 + ceil32(return_data.size) + floor32(mem[_6463 + mem[_6463]]) + 1
                                mem[_6463 + ceil32(return_data.size)] = _6655
                                require _6559 + (32 * _6655) + 32 <= return_data.size
                                idx = 0
                                s = _6463 + _6559 + 32
                                t = _6463 + ceil32(return_data.size) + 32
                                while idx < _6655:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6655:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4735
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4735
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7999 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7999] == bool(mem[_7999])
                            else:
                                _2528 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2624 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2624
                                require _2528 + (32 * _2624) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2528 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2624:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2624:
                                    revert with 'NH{q', 50
                                _4736 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4736
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4736, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6464 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6560 = mem[_6464]
                                require mem[_6464] <= test266151307()
                                require _6464 + mem[_6464] + 31 < _6464 + return_data.size
                                _6656 = mem[_6464 + mem[_6464]]
                                if mem[_6464 + mem[_6464]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6464 + ceil32(return_data.size) + floor32(mem[_6464 + mem[_6464]]) + 1 > test266151307() or floor32(mem[_6464 + mem[_6464]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6464 + ceil32(return_data.size) + floor32(mem[_6464 + mem[_6464]]) + 1
                                mem[_6464 + ceil32(return_data.size)] = _6656
                                require _6560 + (32 * _6656) + 32 <= return_data.size
                                idx = 0
                                s = _6464 + _6560 + 32
                                t = _6464 + ceil32(return_data.size) + 32
                                while idx < _6656:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6656:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4736
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4736
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8000 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8000] == bool(mem[_8000])
                    else:
                        mem[224] = ext_call.return_data[12 len 20]
                        if not arg2:
                            mem[256] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg3
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg3
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2529 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2625 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2625
                                require _2529 + (32 * _2625) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2529 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2625:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2625:
                                    revert with 'NH{q', 50
                                _4737 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4737
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4737, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6465 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6561 = mem[_6465]
                                require mem[_6465] <= test266151307()
                                require _6465 + mem[_6465] + 31 < _6465 + return_data.size
                                _6657 = mem[_6465 + mem[_6465]]
                                if mem[_6465 + mem[_6465]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6465 + ceil32(return_data.size) + floor32(mem[_6465 + mem[_6465]]) + 1 > test266151307() or floor32(mem[_6465 + mem[_6465]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6465 + ceil32(return_data.size) + floor32(mem[_6465 + mem[_6465]]) + 1
                                mem[_6465 + ceil32(return_data.size)] = _6657
                                require _6561 + (32 * _6657) + 32 <= return_data.size
                                idx = 0
                                s = _6465 + _6561 + 32
                                t = _6465 + ceil32(return_data.size) + 32
                                while idx < _6657:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6657:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4737
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4737
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8001 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8001] == bool(mem[_8001])
                            else:
                                _2530 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2626 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2626
                                require _2530 + (32 * _2626) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2530 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2626:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2626:
                                    revert with 'NH{q', 50
                                _4738 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4738
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4738, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6466 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6562 = mem[_6466]
                                require mem[_6466] <= test266151307()
                                require _6466 + mem[_6466] + 31 < _6466 + return_data.size
                                _6658 = mem[_6466 + mem[_6466]]
                                if mem[_6466 + mem[_6466]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6466 + ceil32(return_data.size) + floor32(mem[_6466 + mem[_6466]]) + 1 > test266151307() or floor32(mem[_6466 + mem[_6466]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6466 + ceil32(return_data.size) + floor32(mem[_6466 + mem[_6466]]) + 1
                                mem[_6466 + ceil32(return_data.size)] = _6658
                                require _6562 + (32 * _6658) + 32 <= return_data.size
                                idx = 0
                                s = _6466 + _6562 + 32
                                t = _6466 + ceil32(return_data.size) + 32
                                while idx < _6658:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6658:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4738
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4738
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8002 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8002] == bool(mem[_8002])
                        else:
                            mem[256] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg3
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg3
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2531 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2627 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2627
                                require _2531 + (32 * _2627) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2531 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2627:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2627:
                                    revert with 'NH{q', 50
                                _4739 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4739
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4739, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6467 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6563 = mem[_6467]
                                require mem[_6467] <= test266151307()
                                require _6467 + mem[_6467] + 31 < _6467 + return_data.size
                                _6659 = mem[_6467 + mem[_6467]]
                                if mem[_6467 + mem[_6467]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6467 + ceil32(return_data.size) + floor32(mem[_6467 + mem[_6467]]) + 1 > test266151307() or floor32(mem[_6467 + mem[_6467]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6467 + ceil32(return_data.size) + floor32(mem[_6467 + mem[_6467]]) + 1
                                mem[_6467 + ceil32(return_data.size)] = _6659
                                require _6563 + (32 * _6659) + 32 <= return_data.size
                                idx = 0
                                s = _6467 + _6563 + 32
                                t = _6467 + ceil32(return_data.size) + 32
                                while idx < _6659:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6659:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4739
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4739
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8003 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8003] == bool(mem[_8003])
                            else:
                                _2532 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2628 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2628
                                require _2532 + (32 * _2628) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2532 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2628:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2628:
                                    revert with 'NH{q', 50
                                _4740 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4740
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4740, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6468 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6564 = mem[_6468]
                                require mem[_6468] <= test266151307()
                                require _6468 + mem[_6468] + 31 < _6468 + return_data.size
                                _6660 = mem[_6468 + mem[_6468]]
                                if mem[_6468 + mem[_6468]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6468 + ceil32(return_data.size) + floor32(mem[_6468 + mem[_6468]]) + 1 > test266151307() or floor32(mem[_6468 + mem[_6468]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6468 + ceil32(return_data.size) + floor32(mem[_6468 + mem[_6468]]) + 1
                                mem[_6468 + ceil32(return_data.size)] = _6660
                                require _6564 + (32 * _6660) + 32 <= return_data.size
                                idx = 0
                                s = _6468 + _6564 + 32
                                t = _6468 + ceil32(return_data.size) + 32
                                while idx < _6660:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6660:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4740
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4740
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8004 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8004] == bool(mem[_8004])
                else:
                    mem[160] = ext_call.return_data[12 len 20]
                    if not arg2:
                        mem[224] = address(ext_call.return_data[0])
                        if not arg2:
                            mem[256] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg3
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg3
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2533 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2629 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2629
                                require _2533 + (32 * _2629) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2533 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2629:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2629:
                                    revert with 'NH{q', 50
                                _4741 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4741
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4741, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6469 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6565 = mem[_6469]
                                require mem[_6469] <= test266151307()
                                require _6469 + mem[_6469] + 31 < _6469 + return_data.size
                                _6661 = mem[_6469 + mem[_6469]]
                                if mem[_6469 + mem[_6469]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6469 + ceil32(return_data.size) + floor32(mem[_6469 + mem[_6469]]) + 1 > test266151307() or floor32(mem[_6469 + mem[_6469]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6469 + ceil32(return_data.size) + floor32(mem[_6469 + mem[_6469]]) + 1
                                mem[_6469 + ceil32(return_data.size)] = _6661
                                require _6565 + (32 * _6661) + 32 <= return_data.size
                                idx = 0
                                s = _6469 + _6565 + 32
                                t = _6469 + ceil32(return_data.size) + 32
                                while idx < _6661:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6661:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4741
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4741
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8005 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8005] == bool(mem[_8005])
                            else:
                                _2534 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2630 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2630
                                require _2534 + (32 * _2630) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2534 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2630:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2630:
                                    revert with 'NH{q', 50
                                _4742 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4742
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4742, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6470 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6566 = mem[_6470]
                                require mem[_6470] <= test266151307()
                                require _6470 + mem[_6470] + 31 < _6470 + return_data.size
                                _6662 = mem[_6470 + mem[_6470]]
                                if mem[_6470 + mem[_6470]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6470 + ceil32(return_data.size) + floor32(mem[_6470 + mem[_6470]]) + 1 > test266151307() or floor32(mem[_6470 + mem[_6470]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6470 + ceil32(return_data.size) + floor32(mem[_6470 + mem[_6470]]) + 1
                                mem[_6470 + ceil32(return_data.size)] = _6662
                                require _6566 + (32 * _6662) + 32 <= return_data.size
                                idx = 0
                                s = _6470 + _6566 + 32
                                t = _6470 + ceil32(return_data.size) + 32
                                while idx < _6662:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6662:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4742
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4742
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8006 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8006] == bool(mem[_8006])
                        else:
                            mem[256] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg3
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg3
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2535 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2631 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2631
                                require _2535 + (32 * _2631) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2535 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2631:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2631:
                                    revert with 'NH{q', 50
                                _4743 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4743
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4743, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6471 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6567 = mem[_6471]
                                require mem[_6471] <= test266151307()
                                require _6471 + mem[_6471] + 31 < _6471 + return_data.size
                                _6663 = mem[_6471 + mem[_6471]]
                                if mem[_6471 + mem[_6471]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6471 + ceil32(return_data.size) + floor32(mem[_6471 + mem[_6471]]) + 1 > test266151307() or floor32(mem[_6471 + mem[_6471]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6471 + ceil32(return_data.size) + floor32(mem[_6471 + mem[_6471]]) + 1
                                mem[_6471 + ceil32(return_data.size)] = _6663
                                require _6567 + (32 * _6663) + 32 <= return_data.size
                                idx = 0
                                s = _6471 + _6567 + 32
                                t = _6471 + ceil32(return_data.size) + 32
                                while idx < _6663:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6663:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4743
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4743
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8007 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8007] == bool(mem[_8007])
                            else:
                                _2536 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2632 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2632
                                require _2536 + (32 * _2632) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2536 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2632:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2632:
                                    revert with 'NH{q', 50
                                _4744 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4744
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4744, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6472 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6568 = mem[_6472]
                                require mem[_6472] <= test266151307()
                                require _6472 + mem[_6472] + 31 < _6472 + return_data.size
                                _6664 = mem[_6472 + mem[_6472]]
                                if mem[_6472 + mem[_6472]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6472 + ceil32(return_data.size) + floor32(mem[_6472 + mem[_6472]]) + 1 > test266151307() or floor32(mem[_6472 + mem[_6472]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6472 + ceil32(return_data.size) + floor32(mem[_6472 + mem[_6472]]) + 1
                                mem[_6472 + ceil32(return_data.size)] = _6664
                                require _6568 + (32 * _6664) + 32 <= return_data.size
                                idx = 0
                                s = _6472 + _6568 + 32
                                t = _6472 + ceil32(return_data.size) + 32
                                while idx < _6664:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6664:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4744
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4744
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8008 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8008] == bool(mem[_8008])
                    else:
                        mem[224] = ext_call.return_data[12 len 20]
                        if not arg2:
                            mem[256] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg3
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg3
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2537 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2633 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2633
                                require _2537 + (32 * _2633) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2537 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2633:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2633:
                                    revert with 'NH{q', 50
                                _4745 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4745
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4745, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6473 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6569 = mem[_6473]
                                require mem[_6473] <= test266151307()
                                require _6473 + mem[_6473] + 31 < _6473 + return_data.size
                                _6665 = mem[_6473 + mem[_6473]]
                                if mem[_6473 + mem[_6473]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6473 + ceil32(return_data.size) + floor32(mem[_6473 + mem[_6473]]) + 1 > test266151307() or floor32(mem[_6473 + mem[_6473]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6473 + ceil32(return_data.size) + floor32(mem[_6473 + mem[_6473]]) + 1
                                mem[_6473 + ceil32(return_data.size)] = _6665
                                require _6569 + (32 * _6665) + 32 <= return_data.size
                                idx = 0
                                s = _6473 + _6569 + 32
                                t = _6473 + ceil32(return_data.size) + 32
                                while idx < _6665:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6665:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4745
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4745
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8009 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8009] == bool(mem[_8009])
                            else:
                                _2538 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2634 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2634
                                require _2538 + (32 * _2634) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2538 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2634:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2634:
                                    revert with 'NH{q', 50
                                _4746 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4746
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4746, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6474 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6570 = mem[_6474]
                                require mem[_6474] <= test266151307()
                                require _6474 + mem[_6474] + 31 < _6474 + return_data.size
                                _6666 = mem[_6474 + mem[_6474]]
                                if mem[_6474 + mem[_6474]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6474 + ceil32(return_data.size) + floor32(mem[_6474 + mem[_6474]]) + 1 > test266151307() or floor32(mem[_6474 + mem[_6474]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6474 + ceil32(return_data.size) + floor32(mem[_6474 + mem[_6474]]) + 1
                                mem[_6474 + ceil32(return_data.size)] = _6666
                                require _6570 + (32 * _6666) + 32 <= return_data.size
                                idx = 0
                                s = _6474 + _6570 + 32
                                t = _6474 + ceil32(return_data.size) + 32
                                while idx < _6666:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6666:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4746
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4746
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8010 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8010] == bool(mem[_8010])
                        else:
                            mem[256] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg3
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg3
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2539 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2635 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2635
                                require _2539 + (32 * _2635) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2539 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2635:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2635:
                                    revert with 'NH{q', 50
                                _4747 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4747
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4747, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6475 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6571 = mem[_6475]
                                require mem[_6475] <= test266151307()
                                require _6475 + mem[_6475] + 31 < _6475 + return_data.size
                                _6667 = mem[_6475 + mem[_6475]]
                                if mem[_6475 + mem[_6475]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6475 + ceil32(return_data.size) + floor32(mem[_6475 + mem[_6475]]) + 1 > test266151307() or floor32(mem[_6475 + mem[_6475]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6475 + ceil32(return_data.size) + floor32(mem[_6475 + mem[_6475]]) + 1
                                mem[_6475 + ceil32(return_data.size)] = _6667
                                require _6571 + (32 * _6667) + 32 <= return_data.size
                                idx = 0
                                s = _6475 + _6571 + 32
                                t = _6475 + ceil32(return_data.size) + 32
                                while idx < _6667:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6667:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4747
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4747
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8011 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8011] == bool(mem[_8011])
                            else:
                                _2540 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2636 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2636
                                require _2540 + (32 * _2636) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2540 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2636:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2636:
                                    revert with 'NH{q', 50
                                _4748 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4748
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4748, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6476 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6572 = mem[_6476]
                                require mem[_6476] <= test266151307()
                                require _6476 + mem[_6476] + 31 < _6476 + return_data.size
                                _6668 = mem[_6476 + mem[_6476]]
                                if mem[_6476 + mem[_6476]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6476 + ceil32(return_data.size) + floor32(mem[_6476 + mem[_6476]]) + 1 > test266151307() or floor32(mem[_6476 + mem[_6476]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6476 + ceil32(return_data.size) + floor32(mem[_6476 + mem[_6476]]) + 1
                                mem[_6476 + ceil32(return_data.size)] = _6668
                                require _6572 + (32 * _6668) + 32 <= return_data.size
                                idx = 0
                                s = _6476 + _6572 + 32
                                t = _6476 + ceil32(return_data.size) + 32
                                while idx < _6668:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6668:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4748
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4748
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8012 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8012] == bool(mem[_8012])
            else:
                mem[128] = address(ext_call.return_data[0])
                if not arg2:
                    mem[160] = address(ext_call.return_data[0])
                    if not arg2:
                        mem[224] = address(ext_call.return_data[0])
                        if not arg2:
                            mem[256] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg3
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg3
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2541 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2637 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2637
                                require _2541 + (32 * _2637) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2541 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2637:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2637:
                                    revert with 'NH{q', 50
                                _4749 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4749
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4749, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6477 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6573 = mem[_6477]
                                require mem[_6477] <= test266151307()
                                require _6477 + mem[_6477] + 31 < _6477 + return_data.size
                                _6669 = mem[_6477 + mem[_6477]]
                                if mem[_6477 + mem[_6477]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6477 + ceil32(return_data.size) + floor32(mem[_6477 + mem[_6477]]) + 1 > test266151307() or floor32(mem[_6477 + mem[_6477]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6477 + ceil32(return_data.size) + floor32(mem[_6477 + mem[_6477]]) + 1
                                mem[_6477 + ceil32(return_data.size)] = _6669
                                require _6573 + (32 * _6669) + 32 <= return_data.size
                                idx = 0
                                s = _6477 + _6573 + 32
                                t = _6477 + ceil32(return_data.size) + 32
                                while idx < _6669:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6669:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4749
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4749
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8013 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8013] == bool(mem[_8013])
                            else:
                                _2542 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2638 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2638
                                require _2542 + (32 * _2638) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2542 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2638:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2638:
                                    revert with 'NH{q', 50
                                _4750 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4750
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4750, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6478 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6574 = mem[_6478]
                                require mem[_6478] <= test266151307()
                                require _6478 + mem[_6478] + 31 < _6478 + return_data.size
                                _6670 = mem[_6478 + mem[_6478]]
                                if mem[_6478 + mem[_6478]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6478 + ceil32(return_data.size) + floor32(mem[_6478 + mem[_6478]]) + 1 > test266151307() or floor32(mem[_6478 + mem[_6478]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6478 + ceil32(return_data.size) + floor32(mem[_6478 + mem[_6478]]) + 1
                                mem[_6478 + ceil32(return_data.size)] = _6670
                                require _6574 + (32 * _6670) + 32 <= return_data.size
                                idx = 0
                                s = _6478 + _6574 + 32
                                t = _6478 + ceil32(return_data.size) + 32
                                while idx < _6670:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6670:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4750
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4750
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8014 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8014] == bool(mem[_8014])
                        else:
                            mem[256] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg3
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg3
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2543 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2639 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2639
                                require _2543 + (32 * _2639) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2543 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2639:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2639:
                                    revert with 'NH{q', 50
                                _4751 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4751
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4751, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6479 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6575 = mem[_6479]
                                require mem[_6479] <= test266151307()
                                require _6479 + mem[_6479] + 31 < _6479 + return_data.size
                                _6671 = mem[_6479 + mem[_6479]]
                                if mem[_6479 + mem[_6479]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6479 + ceil32(return_data.size) + floor32(mem[_6479 + mem[_6479]]) + 1 > test266151307() or floor32(mem[_6479 + mem[_6479]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6479 + ceil32(return_data.size) + floor32(mem[_6479 + mem[_6479]]) + 1
                                mem[_6479 + ceil32(return_data.size)] = _6671
                                require _6575 + (32 * _6671) + 32 <= return_data.size
                                idx = 0
                                s = _6479 + _6575 + 32
                                t = _6479 + ceil32(return_data.size) + 32
                                while idx < _6671:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6671:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4751
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4751
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8015 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8015] == bool(mem[_8015])
                            else:
                                _2544 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2640 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2640
                                require _2544 + (32 * _2640) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2544 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2640:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2640:
                                    revert with 'NH{q', 50
                                _4752 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4752
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4752, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6480 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6576 = mem[_6480]
                                require mem[_6480] <= test266151307()
                                require _6480 + mem[_6480] + 31 < _6480 + return_data.size
                                _6672 = mem[_6480 + mem[_6480]]
                                if mem[_6480 + mem[_6480]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6480 + ceil32(return_data.size) + floor32(mem[_6480 + mem[_6480]]) + 1 > test266151307() or floor32(mem[_6480 + mem[_6480]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6480 + ceil32(return_data.size) + floor32(mem[_6480 + mem[_6480]]) + 1
                                mem[_6480 + ceil32(return_data.size)] = _6672
                                require _6576 + (32 * _6672) + 32 <= return_data.size
                                idx = 0
                                s = _6480 + _6576 + 32
                                t = _6480 + ceil32(return_data.size) + 32
                                while idx < _6672:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6672:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4752
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4752
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8016 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8016] == bool(mem[_8016])
                    else:
                        mem[224] = ext_call.return_data[12 len 20]
                        if not arg2:
                            mem[256] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg3
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg3
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2545 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2641 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2641
                                require _2545 + (32 * _2641) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2545 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2641:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2641:
                                    revert with 'NH{q', 50
                                _4753 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4753
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4753, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6481 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6577 = mem[_6481]
                                require mem[_6481] <= test266151307()
                                require _6481 + mem[_6481] + 31 < _6481 + return_data.size
                                _6673 = mem[_6481 + mem[_6481]]
                                if mem[_6481 + mem[_6481]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6481 + ceil32(return_data.size) + floor32(mem[_6481 + mem[_6481]]) + 1 > test266151307() or floor32(mem[_6481 + mem[_6481]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6481 + ceil32(return_data.size) + floor32(mem[_6481 + mem[_6481]]) + 1
                                mem[_6481 + ceil32(return_data.size)] = _6673
                                require _6577 + (32 * _6673) + 32 <= return_data.size
                                idx = 0
                                s = _6481 + _6577 + 32
                                t = _6481 + ceil32(return_data.size) + 32
                                while idx < _6673:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6673:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4753
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4753
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8017 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8017] == bool(mem[_8017])
                            else:
                                _2546 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2642 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2642
                                require _2546 + (32 * _2642) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2546 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2642:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2642:
                                    revert with 'NH{q', 50
                                _4754 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4754
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4754, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6482 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6578 = mem[_6482]
                                require mem[_6482] <= test266151307()
                                require _6482 + mem[_6482] + 31 < _6482 + return_data.size
                                _6674 = mem[_6482 + mem[_6482]]
                                if mem[_6482 + mem[_6482]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6482 + ceil32(return_data.size) + floor32(mem[_6482 + mem[_6482]]) + 1 > test266151307() or floor32(mem[_6482 + mem[_6482]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6482 + ceil32(return_data.size) + floor32(mem[_6482 + mem[_6482]]) + 1
                                mem[_6482 + ceil32(return_data.size)] = _6674
                                require _6578 + (32 * _6674) + 32 <= return_data.size
                                idx = 0
                                s = _6482 + _6578 + 32
                                t = _6482 + ceil32(return_data.size) + 32
                                while idx < _6674:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6674:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4754
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4754
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8018 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8018] == bool(mem[_8018])
                        else:
                            mem[256] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg3
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg3
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2547 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2643 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2643
                                require _2547 + (32 * _2643) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2547 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2643:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2643:
                                    revert with 'NH{q', 50
                                _4755 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4755
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4755, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6483 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6579 = mem[_6483]
                                require mem[_6483] <= test266151307()
                                require _6483 + mem[_6483] + 31 < _6483 + return_data.size
                                _6675 = mem[_6483 + mem[_6483]]
                                if mem[_6483 + mem[_6483]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6483 + ceil32(return_data.size) + floor32(mem[_6483 + mem[_6483]]) + 1 > test266151307() or floor32(mem[_6483 + mem[_6483]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6483 + ceil32(return_data.size) + floor32(mem[_6483 + mem[_6483]]) + 1
                                mem[_6483 + ceil32(return_data.size)] = _6675
                                require _6579 + (32 * _6675) + 32 <= return_data.size
                                idx = 0
                                s = _6483 + _6579 + 32
                                t = _6483 + ceil32(return_data.size) + 32
                                while idx < _6675:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6675:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4755
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4755
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8019 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8019] == bool(mem[_8019])
                            else:
                                _2548 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2644 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2644
                                require _2548 + (32 * _2644) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2548 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2644:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2644:
                                    revert with 'NH{q', 50
                                _4756 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4756
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4756, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6484 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6580 = mem[_6484]
                                require mem[_6484] <= test266151307()
                                require _6484 + mem[_6484] + 31 < _6484 + return_data.size
                                _6676 = mem[_6484 + mem[_6484]]
                                if mem[_6484 + mem[_6484]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6484 + ceil32(return_data.size) + floor32(mem[_6484 + mem[_6484]]) + 1 > test266151307() or floor32(mem[_6484 + mem[_6484]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6484 + ceil32(return_data.size) + floor32(mem[_6484 + mem[_6484]]) + 1
                                mem[_6484 + ceil32(return_data.size)] = _6676
                                require _6580 + (32 * _6676) + 32 <= return_data.size
                                idx = 0
                                s = _6484 + _6580 + 32
                                t = _6484 + ceil32(return_data.size) + 32
                                while idx < _6676:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6676:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4756
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4756
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8020 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8020] == bool(mem[_8020])
                else:
                    mem[160] = ext_call.return_data[12 len 20]
                    if not arg2:
                        mem[224] = address(ext_call.return_data[0])
                        if not arg2:
                            mem[256] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg3
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg3
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2549 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2645 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2645
                                require _2549 + (32 * _2645) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2549 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2645:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2645:
                                    revert with 'NH{q', 50
                                _4757 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4757
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4757, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6485 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6581 = mem[_6485]
                                require mem[_6485] <= test266151307()
                                require _6485 + mem[_6485] + 31 < _6485 + return_data.size
                                _6677 = mem[_6485 + mem[_6485]]
                                if mem[_6485 + mem[_6485]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6485 + ceil32(return_data.size) + floor32(mem[_6485 + mem[_6485]]) + 1 > test266151307() or floor32(mem[_6485 + mem[_6485]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6485 + ceil32(return_data.size) + floor32(mem[_6485 + mem[_6485]]) + 1
                                mem[_6485 + ceil32(return_data.size)] = _6677
                                require _6581 + (32 * _6677) + 32 <= return_data.size
                                idx = 0
                                s = _6485 + _6581 + 32
                                t = _6485 + ceil32(return_data.size) + 32
                                while idx < _6677:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6677:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4757
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4757
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8021 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8021] == bool(mem[_8021])
                            else:
                                _2550 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2646 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2646
                                require _2550 + (32 * _2646) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2550 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2646:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2646:
                                    revert with 'NH{q', 50
                                _4758 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4758
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4758, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6486 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6582 = mem[_6486]
                                require mem[_6486] <= test266151307()
                                require _6486 + mem[_6486] + 31 < _6486 + return_data.size
                                _6678 = mem[_6486 + mem[_6486]]
                                if mem[_6486 + mem[_6486]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6486 + ceil32(return_data.size) + floor32(mem[_6486 + mem[_6486]]) + 1 > test266151307() or floor32(mem[_6486 + mem[_6486]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6486 + ceil32(return_data.size) + floor32(mem[_6486 + mem[_6486]]) + 1
                                mem[_6486 + ceil32(return_data.size)] = _6678
                                require _6582 + (32 * _6678) + 32 <= return_data.size
                                idx = 0
                                s = _6486 + _6582 + 32
                                t = _6486 + ceil32(return_data.size) + 32
                                while idx < _6678:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6678:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4758
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4758
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8022 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8022] == bool(mem[_8022])
                        else:
                            mem[256] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg3
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg3
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2551 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2647 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2647
                                require _2551 + (32 * _2647) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2551 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2647:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2647:
                                    revert with 'NH{q', 50
                                _4759 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4759
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4759, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6487 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6583 = mem[_6487]
                                require mem[_6487] <= test266151307()
                                require _6487 + mem[_6487] + 31 < _6487 + return_data.size
                                _6679 = mem[_6487 + mem[_6487]]
                                if mem[_6487 + mem[_6487]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6487 + ceil32(return_data.size) + floor32(mem[_6487 + mem[_6487]]) + 1 > test266151307() or floor32(mem[_6487 + mem[_6487]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6487 + ceil32(return_data.size) + floor32(mem[_6487 + mem[_6487]]) + 1
                                mem[_6487 + ceil32(return_data.size)] = _6679
                                require _6583 + (32 * _6679) + 32 <= return_data.size
                                idx = 0
                                s = _6487 + _6583 + 32
                                t = _6487 + ceil32(return_data.size) + 32
                                while idx < _6679:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6679:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4759
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4759
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8023 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8023] == bool(mem[_8023])
                            else:
                                _2552 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2648 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2648
                                require _2552 + (32 * _2648) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2552 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2648:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2648:
                                    revert with 'NH{q', 50
                                _4760 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4760
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4760, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6488 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6584 = mem[_6488]
                                require mem[_6488] <= test266151307()
                                require _6488 + mem[_6488] + 31 < _6488 + return_data.size
                                _6680 = mem[_6488 + mem[_6488]]
                                if mem[_6488 + mem[_6488]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6488 + ceil32(return_data.size) + floor32(mem[_6488 + mem[_6488]]) + 1 > test266151307() or floor32(mem[_6488 + mem[_6488]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6488 + ceil32(return_data.size) + floor32(mem[_6488 + mem[_6488]]) + 1
                                mem[_6488 + ceil32(return_data.size)] = _6680
                                require _6584 + (32 * _6680) + 32 <= return_data.size
                                idx = 0
                                s = _6488 + _6584 + 32
                                t = _6488 + ceil32(return_data.size) + 32
                                while idx < _6680:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6680:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4760
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4760
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8024 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8024] == bool(mem[_8024])
                    else:
                        mem[224] = ext_call.return_data[12 len 20]
                        if not arg2:
                            mem[256] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg3
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg3
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2553 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2649 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2649
                                require _2553 + (32 * _2649) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2553 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2649:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2649:
                                    revert with 'NH{q', 50
                                _4761 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4761
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4761, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6489 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6585 = mem[_6489]
                                require mem[_6489] <= test266151307()
                                require _6489 + mem[_6489] + 31 < _6489 + return_data.size
                                _6681 = mem[_6489 + mem[_6489]]
                                if mem[_6489 + mem[_6489]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6489 + ceil32(return_data.size) + floor32(mem[_6489 + mem[_6489]]) + 1 > test266151307() or floor32(mem[_6489 + mem[_6489]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6489 + ceil32(return_data.size) + floor32(mem[_6489 + mem[_6489]]) + 1
                                mem[_6489 + ceil32(return_data.size)] = _6681
                                require _6585 + (32 * _6681) + 32 <= return_data.size
                                idx = 0
                                s = _6489 + _6585 + 32
                                t = _6489 + ceil32(return_data.size) + 32
                                while idx < _6681:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6681:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4761
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4761
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8025 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8025] == bool(mem[_8025])
                            else:
                                _2554 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2650 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2650
                                require _2554 + (32 * _2650) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2554 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2650:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2650:
                                    revert with 'NH{q', 50
                                _4762 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4762
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4762, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6490 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6586 = mem[_6490]
                                require mem[_6490] <= test266151307()
                                require _6490 + mem[_6490] + 31 < _6490 + return_data.size
                                _6682 = mem[_6490 + mem[_6490]]
                                if mem[_6490 + mem[_6490]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6490 + ceil32(return_data.size) + floor32(mem[_6490 + mem[_6490]]) + 1 > test266151307() or floor32(mem[_6490 + mem[_6490]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6490 + ceil32(return_data.size) + floor32(mem[_6490 + mem[_6490]]) + 1
                                mem[_6490 + ceil32(return_data.size)] = _6682
                                require _6586 + (32 * _6682) + 32 <= return_data.size
                                idx = 0
                                s = _6490 + _6586 + 32
                                t = _6490 + ceil32(return_data.size) + 32
                                while idx < _6682:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6682:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4762
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4762
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8026 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8026] == bool(mem[_8026])
                        else:
                            mem[256] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg3
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg3
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2555 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2651 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2651
                                require _2555 + (32 * _2651) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2555 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2651:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2651:
                                    revert with 'NH{q', 50
                                _4763 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4763
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4763, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6491 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6587 = mem[_6491]
                                require mem[_6491] <= test266151307()
                                require _6491 + mem[_6491] + 31 < _6491 + return_data.size
                                _6683 = mem[_6491 + mem[_6491]]
                                if mem[_6491 + mem[_6491]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6491 + ceil32(return_data.size) + floor32(mem[_6491 + mem[_6491]]) + 1 > test266151307() or floor32(mem[_6491 + mem[_6491]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6491 + ceil32(return_data.size) + floor32(mem[_6491 + mem[_6491]]) + 1
                                mem[_6491 + ceil32(return_data.size)] = _6683
                                require _6587 + (32 * _6683) + 32 <= return_data.size
                                idx = 0
                                s = _6491 + _6587 + 32
                                t = _6491 + ceil32(return_data.size) + 32
                                while idx < _6683:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6683:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4763
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4763
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8027 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8027] == bool(mem[_8027])
                            else:
                                _2556 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2652 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2652
                                require _2556 + (32 * _2652) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2556 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2652:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2652:
                                    revert with 'NH{q', 50
                                _4764 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _4764
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _4764, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6492 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6588 = mem[_6492]
                                require mem[_6492] <= test266151307()
                                require _6492 + mem[_6492] + 31 < _6492 + return_data.size
                                _6684 = mem[_6492 + mem[_6492]]
                                if mem[_6492 + mem[_6492]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6492 + ceil32(return_data.size) + floor32(mem[_6492 + mem[_6492]]) + 1 > test266151307() or floor32(mem[_6492 + mem[_6492]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6492 + ceil32(return_data.size) + floor32(mem[_6492 + mem[_6492]]) + 1
                                mem[_6492 + ceil32(return_data.size)] = _6684
                                require _6588 + (32 * _6684) + 32 <= return_data.size
                                idx = 0
                                s = _6492 + _6588 + 32
                                t = _6492 + ceil32(return_data.size) + 32
                                while idx < _6684:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6684:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4764
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4764
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8028 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8028] == bool(mem[_8028])
    else:
        if not arg2:
            mem[128] = ext_call.return_data[12 len 20]
            if not arg2:
                mem[160] = address(ext_call.return_data[0])
                if not arg2:
                    mem[224] = address(ext_call.return_data[0])
                    if not arg2:
                        mem[256] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(2 * ceil32(return_data.size)) + 324] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = arg2
                        mem[(4 * ceil32(return_data.size)) + 324] = 64
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = 224
                        t = (4 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor1)
                        staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        if not arg2:
                            _2557 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2653 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2653
                            require _2557 + (32 * _2653) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2557 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2653:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2653:
                                revert with 'NH{q', 50
                            _4765 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _4765
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _4765, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6493 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6589 = mem[_6493]
                            require mem[_6493] <= test266151307()
                            require _6493 + mem[_6493] + 31 < _6493 + return_data.size
                            _6685 = mem[_6493 + mem[_6493]]
                            if mem[_6493 + mem[_6493]] > test266151307():
                                revert with 'NH{q', 65
                            if _6493 + ceil32(return_data.size) + floor32(mem[_6493 + mem[_6493]]) + 1 > test266151307() or floor32(mem[_6493 + mem[_6493]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6493 + ceil32(return_data.size) + floor32(mem[_6493 + mem[_6493]]) + 1
                            mem[_6493 + ceil32(return_data.size)] = _6685
                            require _6589 + (32 * _6685) + 32 <= return_data.size
                            idx = 0
                            s = _6493 + _6589 + 32
                            t = _6493 + ceil32(return_data.size) + 32
                            while idx < _6685:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6685:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4765
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4765
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8029 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8029] == bool(mem[_8029])
                        else:
                            _2558 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2654 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2654
                            require _2558 + (32 * _2654) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2558 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2654:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2654:
                                revert with 'NH{q', 50
                            _4766 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _4766
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _4766, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6494 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6590 = mem[_6494]
                            require mem[_6494] <= test266151307()
                            require _6494 + mem[_6494] + 31 < _6494 + return_data.size
                            _6686 = mem[_6494 + mem[_6494]]
                            if mem[_6494 + mem[_6494]] > test266151307():
                                revert with 'NH{q', 65
                            if _6494 + ceil32(return_data.size) + floor32(mem[_6494 + mem[_6494]]) + 1 > test266151307() or floor32(mem[_6494 + mem[_6494]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6494 + ceil32(return_data.size) + floor32(mem[_6494 + mem[_6494]]) + 1
                            mem[_6494 + ceil32(return_data.size)] = _6686
                            require _6590 + (32 * _6686) + 32 <= return_data.size
                            idx = 0
                            s = _6494 + _6590 + 32
                            t = _6494 + ceil32(return_data.size) + 32
                            while idx < _6686:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6686:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4766
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4766
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8030 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8030] == bool(mem[_8030])
                    else:
                        mem[256] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(2 * ceil32(return_data.size)) + 324] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = arg2
                        mem[(4 * ceil32(return_data.size)) + 324] = 64
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = 224
                        t = (4 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor1)
                        staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        if not arg2:
                            _2559 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2655 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2655
                            require _2559 + (32 * _2655) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2559 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2655:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2655:
                                revert with 'NH{q', 50
                            _4767 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _4767
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _4767, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6495 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6591 = mem[_6495]
                            require mem[_6495] <= test266151307()
                            require _6495 + mem[_6495] + 31 < _6495 + return_data.size
                            _6687 = mem[_6495 + mem[_6495]]
                            if mem[_6495 + mem[_6495]] > test266151307():
                                revert with 'NH{q', 65
                            if _6495 + ceil32(return_data.size) + floor32(mem[_6495 + mem[_6495]]) + 1 > test266151307() or floor32(mem[_6495 + mem[_6495]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6495 + ceil32(return_data.size) + floor32(mem[_6495 + mem[_6495]]) + 1
                            mem[_6495 + ceil32(return_data.size)] = _6687
                            require _6591 + (32 * _6687) + 32 <= return_data.size
                            idx = 0
                            s = _6495 + _6591 + 32
                            t = _6495 + ceil32(return_data.size) + 32
                            while idx < _6687:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6687:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4767
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4767
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8031 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8031] == bool(mem[_8031])
                        else:
                            _2560 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2656 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2656
                            require _2560 + (32 * _2656) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2560 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2656:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2656:
                                revert with 'NH{q', 50
                            _4768 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _4768
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _4768, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6496 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6592 = mem[_6496]
                            require mem[_6496] <= test266151307()
                            require _6496 + mem[_6496] + 31 < _6496 + return_data.size
                            _6688 = mem[_6496 + mem[_6496]]
                            if mem[_6496 + mem[_6496]] > test266151307():
                                revert with 'NH{q', 65
                            if _6496 + ceil32(return_data.size) + floor32(mem[_6496 + mem[_6496]]) + 1 > test266151307() or floor32(mem[_6496 + mem[_6496]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6496 + ceil32(return_data.size) + floor32(mem[_6496 + mem[_6496]]) + 1
                            mem[_6496 + ceil32(return_data.size)] = _6688
                            require _6592 + (32 * _6688) + 32 <= return_data.size
                            idx = 0
                            s = _6496 + _6592 + 32
                            t = _6496 + ceil32(return_data.size) + 32
                            while idx < _6688:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6688:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4768
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4768
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8032 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8032] == bool(mem[_8032])
                else:
                    mem[224] = ext_call.return_data[12 len 20]
                    if not arg2:
                        mem[256] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(2 * ceil32(return_data.size)) + 324] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = arg2
                        mem[(4 * ceil32(return_data.size)) + 324] = 64
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = 224
                        t = (4 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor1)
                        staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        if not arg2:
                            _2561 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2657 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2657
                            require _2561 + (32 * _2657) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2561 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2657:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2657:
                                revert with 'NH{q', 50
                            _4769 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _4769
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _4769, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6497 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6593 = mem[_6497]
                            require mem[_6497] <= test266151307()
                            require _6497 + mem[_6497] + 31 < _6497 + return_data.size
                            _6689 = mem[_6497 + mem[_6497]]
                            if mem[_6497 + mem[_6497]] > test266151307():
                                revert with 'NH{q', 65
                            if _6497 + ceil32(return_data.size) + floor32(mem[_6497 + mem[_6497]]) + 1 > test266151307() or floor32(mem[_6497 + mem[_6497]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6497 + ceil32(return_data.size) + floor32(mem[_6497 + mem[_6497]]) + 1
                            mem[_6497 + ceil32(return_data.size)] = _6689
                            require _6593 + (32 * _6689) + 32 <= return_data.size
                            idx = 0
                            s = _6497 + _6593 + 32
                            t = _6497 + ceil32(return_data.size) + 32
                            while idx < _6689:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6689:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4769
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4769
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8033 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8033] == bool(mem[_8033])
                        else:
                            _2562 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2658 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2658
                            require _2562 + (32 * _2658) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2562 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2658:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2658:
                                revert with 'NH{q', 50
                            _4770 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _4770
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _4770, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6498 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6594 = mem[_6498]
                            require mem[_6498] <= test266151307()
                            require _6498 + mem[_6498] + 31 < _6498 + return_data.size
                            _6690 = mem[_6498 + mem[_6498]]
                            if mem[_6498 + mem[_6498]] > test266151307():
                                revert with 'NH{q', 65
                            if _6498 + ceil32(return_data.size) + floor32(mem[_6498 + mem[_6498]]) + 1 > test266151307() or floor32(mem[_6498 + mem[_6498]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6498 + ceil32(return_data.size) + floor32(mem[_6498 + mem[_6498]]) + 1
                            mem[_6498 + ceil32(return_data.size)] = _6690
                            require _6594 + (32 * _6690) + 32 <= return_data.size
                            idx = 0
                            s = _6498 + _6594 + 32
                            t = _6498 + ceil32(return_data.size) + 32
                            while idx < _6690:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6690:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4770
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4770
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8034 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8034] == bool(mem[_8034])
                    else:
                        mem[256] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(2 * ceil32(return_data.size)) + 324] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = arg2
                        mem[(4 * ceil32(return_data.size)) + 324] = 64
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = 224
                        t = (4 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor1)
                        staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        if not arg2:
                            _2563 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2659 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2659
                            require _2563 + (32 * _2659) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2563 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2659:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2659:
                                revert with 'NH{q', 50
                            _4771 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _4771
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _4771, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6499 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6595 = mem[_6499]
                            require mem[_6499] <= test266151307()
                            require _6499 + mem[_6499] + 31 < _6499 + return_data.size
                            _6691 = mem[_6499 + mem[_6499]]
                            if mem[_6499 + mem[_6499]] > test266151307():
                                revert with 'NH{q', 65
                            if _6499 + ceil32(return_data.size) + floor32(mem[_6499 + mem[_6499]]) + 1 > test266151307() or floor32(mem[_6499 + mem[_6499]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6499 + ceil32(return_data.size) + floor32(mem[_6499 + mem[_6499]]) + 1
                            mem[_6499 + ceil32(return_data.size)] = _6691
                            require _6595 + (32 * _6691) + 32 <= return_data.size
                            idx = 0
                            s = _6499 + _6595 + 32
                            t = _6499 + ceil32(return_data.size) + 32
                            while idx < _6691:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6691:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4771
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4771
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8035 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8035] == bool(mem[_8035])
                        else:
                            _2564 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2660 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2660
                            require _2564 + (32 * _2660) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2564 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2660:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2660:
                                revert with 'NH{q', 50
                            _4772 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _4772
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _4772, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6500 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6596 = mem[_6500]
                            require mem[_6500] <= test266151307()
                            require _6500 + mem[_6500] + 31 < _6500 + return_data.size
                            _6692 = mem[_6500 + mem[_6500]]
                            if mem[_6500 + mem[_6500]] > test266151307():
                                revert with 'NH{q', 65
                            if _6500 + ceil32(return_data.size) + floor32(mem[_6500 + mem[_6500]]) + 1 > test266151307() or floor32(mem[_6500 + mem[_6500]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6500 + ceil32(return_data.size) + floor32(mem[_6500 + mem[_6500]]) + 1
                            mem[_6500 + ceil32(return_data.size)] = _6692
                            require _6596 + (32 * _6692) + 32 <= return_data.size
                            idx = 0
                            s = _6500 + _6596 + 32
                            t = _6500 + ceil32(return_data.size) + 32
                            while idx < _6692:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6692:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4772
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4772
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8036 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8036] == bool(mem[_8036])
            else:
                mem[160] = ext_call.return_data[12 len 20]
                if not arg2:
                    mem[224] = address(ext_call.return_data[0])
                    if not arg2:
                        mem[256] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(2 * ceil32(return_data.size)) + 324] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = arg2
                        mem[(4 * ceil32(return_data.size)) + 324] = 64
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = 224
                        t = (4 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor1)
                        staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        if not arg2:
                            _2565 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2661 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2661
                            require _2565 + (32 * _2661) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2565 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2661:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2661:
                                revert with 'NH{q', 50
                            _4773 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _4773
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _4773, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6501 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6597 = mem[_6501]
                            require mem[_6501] <= test266151307()
                            require _6501 + mem[_6501] + 31 < _6501 + return_data.size
                            _6693 = mem[_6501 + mem[_6501]]
                            if mem[_6501 + mem[_6501]] > test266151307():
                                revert with 'NH{q', 65
                            if _6501 + ceil32(return_data.size) + floor32(mem[_6501 + mem[_6501]]) + 1 > test266151307() or floor32(mem[_6501 + mem[_6501]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6501 + ceil32(return_data.size) + floor32(mem[_6501 + mem[_6501]]) + 1
                            mem[_6501 + ceil32(return_data.size)] = _6693
                            require _6597 + (32 * _6693) + 32 <= return_data.size
                            idx = 0
                            s = _6501 + _6597 + 32
                            t = _6501 + ceil32(return_data.size) + 32
                            while idx < _6693:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6693:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4773
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4773
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8037 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8037] == bool(mem[_8037])
                        else:
                            _2566 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2662 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2662
                            require _2566 + (32 * _2662) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2566 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2662:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2662:
                                revert with 'NH{q', 50
                            _4774 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _4774
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _4774, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6502 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6598 = mem[_6502]
                            require mem[_6502] <= test266151307()
                            require _6502 + mem[_6502] + 31 < _6502 + return_data.size
                            _6694 = mem[_6502 + mem[_6502]]
                            if mem[_6502 + mem[_6502]] > test266151307():
                                revert with 'NH{q', 65
                            if _6502 + ceil32(return_data.size) + floor32(mem[_6502 + mem[_6502]]) + 1 > test266151307() or floor32(mem[_6502 + mem[_6502]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6502 + ceil32(return_data.size) + floor32(mem[_6502 + mem[_6502]]) + 1
                            mem[_6502 + ceil32(return_data.size)] = _6694
                            require _6598 + (32 * _6694) + 32 <= return_data.size
                            idx = 0
                            s = _6502 + _6598 + 32
                            t = _6502 + ceil32(return_data.size) + 32
                            while idx < _6694:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6694:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4774
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4774
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8038 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8038] == bool(mem[_8038])
                    else:
                        mem[256] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(2 * ceil32(return_data.size)) + 324] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = arg2
                        mem[(4 * ceil32(return_data.size)) + 324] = 64
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = 224
                        t = (4 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor1)
                        staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        if not arg2:
                            _2567 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2663 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2663
                            require _2567 + (32 * _2663) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2567 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2663:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2663:
                                revert with 'NH{q', 50
                            _4775 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _4775
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _4775, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6503 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6599 = mem[_6503]
                            require mem[_6503] <= test266151307()
                            require _6503 + mem[_6503] + 31 < _6503 + return_data.size
                            _6695 = mem[_6503 + mem[_6503]]
                            if mem[_6503 + mem[_6503]] > test266151307():
                                revert with 'NH{q', 65
                            if _6503 + ceil32(return_data.size) + floor32(mem[_6503 + mem[_6503]]) + 1 > test266151307() or floor32(mem[_6503 + mem[_6503]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6503 + ceil32(return_data.size) + floor32(mem[_6503 + mem[_6503]]) + 1
                            mem[_6503 + ceil32(return_data.size)] = _6695
                            require _6599 + (32 * _6695) + 32 <= return_data.size
                            idx = 0
                            s = _6503 + _6599 + 32
                            t = _6503 + ceil32(return_data.size) + 32
                            while idx < _6695:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6695:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4775
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4775
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8039 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8039] == bool(mem[_8039])
                        else:
                            _2568 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2664 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2664
                            require _2568 + (32 * _2664) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2568 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2664:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2664:
                                revert with 'NH{q', 50
                            _4776 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _4776
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _4776, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6504 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6600 = mem[_6504]
                            require mem[_6504] <= test266151307()
                            require _6504 + mem[_6504] + 31 < _6504 + return_data.size
                            _6696 = mem[_6504 + mem[_6504]]
                            if mem[_6504 + mem[_6504]] > test266151307():
                                revert with 'NH{q', 65
                            if _6504 + ceil32(return_data.size) + floor32(mem[_6504 + mem[_6504]]) + 1 > test266151307() or floor32(mem[_6504 + mem[_6504]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6504 + ceil32(return_data.size) + floor32(mem[_6504 + mem[_6504]]) + 1
                            mem[_6504 + ceil32(return_data.size)] = _6696
                            require _6600 + (32 * _6696) + 32 <= return_data.size
                            idx = 0
                            s = _6504 + _6600 + 32
                            t = _6504 + ceil32(return_data.size) + 32
                            while idx < _6696:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6696:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4776
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4776
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8040 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8040] == bool(mem[_8040])
                else:
                    mem[224] = ext_call.return_data[12 len 20]
                    if not arg2:
                        mem[256] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(2 * ceil32(return_data.size)) + 324] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = arg2
                        mem[(4 * ceil32(return_data.size)) + 324] = 64
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = 224
                        t = (4 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor1)
                        staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        if not arg2:
                            _2569 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2665 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2665
                            require _2569 + (32 * _2665) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2569 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2665:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2665:
                                revert with 'NH{q', 50
                            _4777 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _4777
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _4777, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6505 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6601 = mem[_6505]
                            require mem[_6505] <= test266151307()
                            require _6505 + mem[_6505] + 31 < _6505 + return_data.size
                            _6697 = mem[_6505 + mem[_6505]]
                            if mem[_6505 + mem[_6505]] > test266151307():
                                revert with 'NH{q', 65
                            if _6505 + ceil32(return_data.size) + floor32(mem[_6505 + mem[_6505]]) + 1 > test266151307() or floor32(mem[_6505 + mem[_6505]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6505 + ceil32(return_data.size) + floor32(mem[_6505 + mem[_6505]]) + 1
                            mem[_6505 + ceil32(return_data.size)] = _6697
                            require _6601 + (32 * _6697) + 32 <= return_data.size
                            idx = 0
                            s = _6505 + _6601 + 32
                            t = _6505 + ceil32(return_data.size) + 32
                            while idx < _6697:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6697:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4777
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4777
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8041 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8041] == bool(mem[_8041])
                        else:
                            _2570 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2666 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2666
                            require _2570 + (32 * _2666) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2570 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2666:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2666:
                                revert with 'NH{q', 50
                            _4778 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _4778
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _4778, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6506 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6602 = mem[_6506]
                            require mem[_6506] <= test266151307()
                            require _6506 + mem[_6506] + 31 < _6506 + return_data.size
                            _6698 = mem[_6506 + mem[_6506]]
                            if mem[_6506 + mem[_6506]] > test266151307():
                                revert with 'NH{q', 65
                            if _6506 + ceil32(return_data.size) + floor32(mem[_6506 + mem[_6506]]) + 1 > test266151307() or floor32(mem[_6506 + mem[_6506]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6506 + ceil32(return_data.size) + floor32(mem[_6506 + mem[_6506]]) + 1
                            mem[_6506 + ceil32(return_data.size)] = _6698
                            require _6602 + (32 * _6698) + 32 <= return_data.size
                            idx = 0
                            s = _6506 + _6602 + 32
                            t = _6506 + ceil32(return_data.size) + 32
                            while idx < _6698:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6698:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4778
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4778
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8042 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8042] == bool(mem[_8042])
                    else:
                        mem[256] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[(2 * ceil32(return_data.size)) + 324] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = arg2
                        mem[(4 * ceil32(return_data.size)) + 324] = 64
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = 224
                        t = (4 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor1)
                        staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        if not arg2:
                            _2571 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2667 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2667
                            require _2571 + (32 * _2667) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2571 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2667:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2667:
                                revert with 'NH{q', 50
                            _4779 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _4779
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _4779, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6507 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6603 = mem[_6507]
                            require mem[_6507] <= test266151307()
                            require _6507 + mem[_6507] + 31 < _6507 + return_data.size
                            _6699 = mem[_6507 + mem[_6507]]
                            if mem[_6507 + mem[_6507]] > test266151307():
                                revert with 'NH{q', 65
                            if _6507 + ceil32(return_data.size) + floor32(mem[_6507 + mem[_6507]]) + 1 > test266151307() or floor32(mem[_6507 + mem[_6507]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6507 + ceil32(return_data.size) + floor32(mem[_6507 + mem[_6507]]) + 1
                            mem[_6507 + ceil32(return_data.size)] = _6699
                            require _6603 + (32 * _6699) + 32 <= return_data.size
                            idx = 0
                            s = _6507 + _6603 + 32
                            t = _6507 + ceil32(return_data.size) + 32
                            while idx < _6699:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6699:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4779
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4779
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8043 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8043] == bool(mem[_8043])
                        else:
                            _2572 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                            _2668 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                            mem[(6 * ceil32(return_data.size)) + 288] = _2668
                            require _2572 + (32 * _2668) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _2572 + 320
                            t = (6 * ceil32(return_data.size)) + 320
                            while idx < _2668:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= _2668:
                                revert with 'NH{q', 50
                            _4780 = mem[(6 * ceil32(return_data.size)) + 320]
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _4780
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
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp + 60
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _4780, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6508 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6604 = mem[_6508]
                            require mem[_6508] <= test266151307()
                            require _6508 + mem[_6508] + 31 < _6508 + return_data.size
                            _6700 = mem[_6508 + mem[_6508]]
                            if mem[_6508 + mem[_6508]] > test266151307():
                                revert with 'NH{q', 65
                            if _6508 + ceil32(return_data.size) + floor32(mem[_6508 + mem[_6508]]) + 1 > test266151307() or floor32(mem[_6508 + mem[_6508]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6508 + ceil32(return_data.size) + floor32(mem[_6508 + mem[_6508]]) + 1
                            mem[_6508 + ceil32(return_data.size)] = _6700
                            require _6604 + (32 * _6700) + 32 <= return_data.size
                            idx = 0
                            s = _6508 + _6604 + 32
                            t = _6508 + ceil32(return_data.size) + 32
                            while idx < _6700:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 1 >= _6700:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4780
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4780
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8044 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8044] == bool(mem[_8044])
        else:
            require not arg3
            if not arg2:
                mem[128] = ext_call.return_data[12 len 20]
                if not arg2:
                    mem[160] = address(ext_call.return_data[0])
                    if not arg2:
                        mem[224] = address(ext_call.return_data[0])
                        if not arg2:
                            mem[256] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg2
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg2
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2573 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2669 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2669
                                require _2573 + (32 * _2669) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2573 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2669:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2669:
                                    revert with 'NH{q', 50
                                _4781 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4781
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4781, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6509 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6605 = mem[_6509]
                                require mem[_6509] <= test266151307()
                                require _6509 + mem[_6509] + 31 < _6509 + return_data.size
                                _6701 = mem[_6509 + mem[_6509]]
                                if mem[_6509 + mem[_6509]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6509 + ceil32(return_data.size) + floor32(mem[_6509 + mem[_6509]]) + 1 > test266151307() or floor32(mem[_6509 + mem[_6509]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6509 + ceil32(return_data.size) + floor32(mem[_6509 + mem[_6509]]) + 1
                                mem[_6509 + ceil32(return_data.size)] = _6701
                                require _6605 + (32 * _6701) + 32 <= return_data.size
                                idx = 0
                                s = _6509 + _6605 + 32
                                t = _6509 + ceil32(return_data.size) + 32
                                while idx < _6701:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6701:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4781
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4781
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8045 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8045] == bool(mem[_8045])
                            else:
                                _2574 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2670 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2670
                                require _2574 + (32 * _2670) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2574 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2670:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2670:
                                    revert with 'NH{q', 50
                                _4782 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4782
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4782, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6510 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6606 = mem[_6510]
                                require mem[_6510] <= test266151307()
                                require _6510 + mem[_6510] + 31 < _6510 + return_data.size
                                _6702 = mem[_6510 + mem[_6510]]
                                if mem[_6510 + mem[_6510]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6510 + ceil32(return_data.size) + floor32(mem[_6510 + mem[_6510]]) + 1 > test266151307() or floor32(mem[_6510 + mem[_6510]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6510 + ceil32(return_data.size) + floor32(mem[_6510 + mem[_6510]]) + 1
                                mem[_6510 + ceil32(return_data.size)] = _6702
                                require _6606 + (32 * _6702) + 32 <= return_data.size
                                idx = 0
                                s = _6510 + _6606 + 32
                                t = _6510 + ceil32(return_data.size) + 32
                                while idx < _6702:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6702:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4782
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4782
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8046 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8046] == bool(mem[_8046])
                        else:
                            mem[256] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg2
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg2
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2575 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2671 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2671
                                require _2575 + (32 * _2671) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2575 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2671:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2671:
                                    revert with 'NH{q', 50
                                _4783 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4783
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4783, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6511 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6607 = mem[_6511]
                                require mem[_6511] <= test266151307()
                                require _6511 + mem[_6511] + 31 < _6511 + return_data.size
                                _6703 = mem[_6511 + mem[_6511]]
                                if mem[_6511 + mem[_6511]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6511 + ceil32(return_data.size) + floor32(mem[_6511 + mem[_6511]]) + 1 > test266151307() or floor32(mem[_6511 + mem[_6511]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6511 + ceil32(return_data.size) + floor32(mem[_6511 + mem[_6511]]) + 1
                                mem[_6511 + ceil32(return_data.size)] = _6703
                                require _6607 + (32 * _6703) + 32 <= return_data.size
                                idx = 0
                                s = _6511 + _6607 + 32
                                t = _6511 + ceil32(return_data.size) + 32
                                while idx < _6703:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6703:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4783
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4783
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8047 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8047] == bool(mem[_8047])
                            else:
                                _2576 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2672 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2672
                                require _2576 + (32 * _2672) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2576 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2672:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2672:
                                    revert with 'NH{q', 50
                                _4784 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4784
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4784, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6512 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6608 = mem[_6512]
                                require mem[_6512] <= test266151307()
                                require _6512 + mem[_6512] + 31 < _6512 + return_data.size
                                _6704 = mem[_6512 + mem[_6512]]
                                if mem[_6512 + mem[_6512]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6512 + ceil32(return_data.size) + floor32(mem[_6512 + mem[_6512]]) + 1 > test266151307() or floor32(mem[_6512 + mem[_6512]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6512 + ceil32(return_data.size) + floor32(mem[_6512 + mem[_6512]]) + 1
                                mem[_6512 + ceil32(return_data.size)] = _6704
                                require _6608 + (32 * _6704) + 32 <= return_data.size
                                idx = 0
                                s = _6512 + _6608 + 32
                                t = _6512 + ceil32(return_data.size) + 32
                                while idx < _6704:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6704:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4784
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4784
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8048 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8048] == bool(mem[_8048])
                    else:
                        mem[224] = ext_call.return_data[12 len 20]
                        if not arg2:
                            mem[256] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg2
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg2
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2577 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2673 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2673
                                require _2577 + (32 * _2673) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2577 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2673:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2673:
                                    revert with 'NH{q', 50
                                _4785 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4785
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4785, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6513 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6609 = mem[_6513]
                                require mem[_6513] <= test266151307()
                                require _6513 + mem[_6513] + 31 < _6513 + return_data.size
                                _6705 = mem[_6513 + mem[_6513]]
                                if mem[_6513 + mem[_6513]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6513 + ceil32(return_data.size) + floor32(mem[_6513 + mem[_6513]]) + 1 > test266151307() or floor32(mem[_6513 + mem[_6513]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6513 + ceil32(return_data.size) + floor32(mem[_6513 + mem[_6513]]) + 1
                                mem[_6513 + ceil32(return_data.size)] = _6705
                                require _6609 + (32 * _6705) + 32 <= return_data.size
                                idx = 0
                                s = _6513 + _6609 + 32
                                t = _6513 + ceil32(return_data.size) + 32
                                while idx < _6705:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6705:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4785
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4785
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8049 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8049] == bool(mem[_8049])
                            else:
                                _2578 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2674 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2674
                                require _2578 + (32 * _2674) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2578 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2674:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2674:
                                    revert with 'NH{q', 50
                                _4786 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4786
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4786, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6514 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6610 = mem[_6514]
                                require mem[_6514] <= test266151307()
                                require _6514 + mem[_6514] + 31 < _6514 + return_data.size
                                _6706 = mem[_6514 + mem[_6514]]
                                if mem[_6514 + mem[_6514]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6514 + ceil32(return_data.size) + floor32(mem[_6514 + mem[_6514]]) + 1 > test266151307() or floor32(mem[_6514 + mem[_6514]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6514 + ceil32(return_data.size) + floor32(mem[_6514 + mem[_6514]]) + 1
                                mem[_6514 + ceil32(return_data.size)] = _6706
                                require _6610 + (32 * _6706) + 32 <= return_data.size
                                idx = 0
                                s = _6514 + _6610 + 32
                                t = _6514 + ceil32(return_data.size) + 32
                                while idx < _6706:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6706:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4786
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4786
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8050 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8050] == bool(mem[_8050])
                        else:
                            mem[256] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg2
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg2
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2579 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2675 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2675
                                require _2579 + (32 * _2675) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2579 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2675:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2675:
                                    revert with 'NH{q', 50
                                _4787 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4787
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4787, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6515 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6611 = mem[_6515]
                                require mem[_6515] <= test266151307()
                                require _6515 + mem[_6515] + 31 < _6515 + return_data.size
                                _6707 = mem[_6515 + mem[_6515]]
                                if mem[_6515 + mem[_6515]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6515 + ceil32(return_data.size) + floor32(mem[_6515 + mem[_6515]]) + 1 > test266151307() or floor32(mem[_6515 + mem[_6515]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6515 + ceil32(return_data.size) + floor32(mem[_6515 + mem[_6515]]) + 1
                                mem[_6515 + ceil32(return_data.size)] = _6707
                                require _6611 + (32 * _6707) + 32 <= return_data.size
                                idx = 0
                                s = _6515 + _6611 + 32
                                t = _6515 + ceil32(return_data.size) + 32
                                while idx < _6707:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6707:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4787
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4787
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8051 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8051] == bool(mem[_8051])
                            else:
                                _2580 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2676 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2676
                                require _2580 + (32 * _2676) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2580 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2676:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2676:
                                    revert with 'NH{q', 50
                                _4788 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4788
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4788, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6516 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6612 = mem[_6516]
                                require mem[_6516] <= test266151307()
                                require _6516 + mem[_6516] + 31 < _6516 + return_data.size
                                _6708 = mem[_6516 + mem[_6516]]
                                if mem[_6516 + mem[_6516]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6516 + ceil32(return_data.size) + floor32(mem[_6516 + mem[_6516]]) + 1 > test266151307() or floor32(mem[_6516 + mem[_6516]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6516 + ceil32(return_data.size) + floor32(mem[_6516 + mem[_6516]]) + 1
                                mem[_6516 + ceil32(return_data.size)] = _6708
                                require _6612 + (32 * _6708) + 32 <= return_data.size
                                idx = 0
                                s = _6516 + _6612 + 32
                                t = _6516 + ceil32(return_data.size) + 32
                                while idx < _6708:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6708:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4788
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4788
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8052 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8052] == bool(mem[_8052])
                else:
                    mem[160] = ext_call.return_data[12 len 20]
                    if not arg2:
                        mem[224] = address(ext_call.return_data[0])
                        if not arg2:
                            mem[256] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg2
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg2
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2581 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2677 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2677
                                require _2581 + (32 * _2677) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2581 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2677:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2677:
                                    revert with 'NH{q', 50
                                _4789 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4789
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4789, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6517 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6613 = mem[_6517]
                                require mem[_6517] <= test266151307()
                                require _6517 + mem[_6517] + 31 < _6517 + return_data.size
                                _6709 = mem[_6517 + mem[_6517]]
                                if mem[_6517 + mem[_6517]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6517 + ceil32(return_data.size) + floor32(mem[_6517 + mem[_6517]]) + 1 > test266151307() or floor32(mem[_6517 + mem[_6517]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6517 + ceil32(return_data.size) + floor32(mem[_6517 + mem[_6517]]) + 1
                                mem[_6517 + ceil32(return_data.size)] = _6709
                                require _6613 + (32 * _6709) + 32 <= return_data.size
                                idx = 0
                                s = _6517 + _6613 + 32
                                t = _6517 + ceil32(return_data.size) + 32
                                while idx < _6709:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6709:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4789
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4789
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8053 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8053] == bool(mem[_8053])
                            else:
                                _2582 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2678 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2678
                                require _2582 + (32 * _2678) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2582 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2678:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2678:
                                    revert with 'NH{q', 50
                                _4790 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4790
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4790, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6518 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6614 = mem[_6518]
                                require mem[_6518] <= test266151307()
                                require _6518 + mem[_6518] + 31 < _6518 + return_data.size
                                _6710 = mem[_6518 + mem[_6518]]
                                if mem[_6518 + mem[_6518]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6518 + ceil32(return_data.size) + floor32(mem[_6518 + mem[_6518]]) + 1 > test266151307() or floor32(mem[_6518 + mem[_6518]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6518 + ceil32(return_data.size) + floor32(mem[_6518 + mem[_6518]]) + 1
                                mem[_6518 + ceil32(return_data.size)] = _6710
                                require _6614 + (32 * _6710) + 32 <= return_data.size
                                idx = 0
                                s = _6518 + _6614 + 32
                                t = _6518 + ceil32(return_data.size) + 32
                                while idx < _6710:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6710:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4790
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4790
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8054 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8054] == bool(mem[_8054])
                        else:
                            mem[256] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg2
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg2
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2583 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2679 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2679
                                require _2583 + (32 * _2679) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2583 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2679:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2679:
                                    revert with 'NH{q', 50
                                _4791 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4791
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4791, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6519 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6615 = mem[_6519]
                                require mem[_6519] <= test266151307()
                                require _6519 + mem[_6519] + 31 < _6519 + return_data.size
                                _6711 = mem[_6519 + mem[_6519]]
                                if mem[_6519 + mem[_6519]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6519 + ceil32(return_data.size) + floor32(mem[_6519 + mem[_6519]]) + 1 > test266151307() or floor32(mem[_6519 + mem[_6519]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6519 + ceil32(return_data.size) + floor32(mem[_6519 + mem[_6519]]) + 1
                                mem[_6519 + ceil32(return_data.size)] = _6711
                                require _6615 + (32 * _6711) + 32 <= return_data.size
                                idx = 0
                                s = _6519 + _6615 + 32
                                t = _6519 + ceil32(return_data.size) + 32
                                while idx < _6711:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6711:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4791
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4791
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8055 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8055] == bool(mem[_8055])
                            else:
                                _2584 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2680 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2680
                                require _2584 + (32 * _2680) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2584 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2680:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2680:
                                    revert with 'NH{q', 50
                                _4792 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4792
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4792, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6520 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6616 = mem[_6520]
                                require mem[_6520] <= test266151307()
                                require _6520 + mem[_6520] + 31 < _6520 + return_data.size
                                _6712 = mem[_6520 + mem[_6520]]
                                if mem[_6520 + mem[_6520]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6520 + ceil32(return_data.size) + floor32(mem[_6520 + mem[_6520]]) + 1 > test266151307() or floor32(mem[_6520 + mem[_6520]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6520 + ceil32(return_data.size) + floor32(mem[_6520 + mem[_6520]]) + 1
                                mem[_6520 + ceil32(return_data.size)] = _6712
                                require _6616 + (32 * _6712) + 32 <= return_data.size
                                idx = 0
                                s = _6520 + _6616 + 32
                                t = _6520 + ceil32(return_data.size) + 32
                                while idx < _6712:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6712:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4792
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4792
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8056 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8056] == bool(mem[_8056])
                    else:
                        mem[224] = ext_call.return_data[12 len 20]
                        if not arg2:
                            mem[256] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg2
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg2
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2585 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2681 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2681
                                require _2585 + (32 * _2681) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2585 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2681:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2681:
                                    revert with 'NH{q', 50
                                _4793 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4793
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4793, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6521 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6617 = mem[_6521]
                                require mem[_6521] <= test266151307()
                                require _6521 + mem[_6521] + 31 < _6521 + return_data.size
                                _6713 = mem[_6521 + mem[_6521]]
                                if mem[_6521 + mem[_6521]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6521 + ceil32(return_data.size) + floor32(mem[_6521 + mem[_6521]]) + 1 > test266151307() or floor32(mem[_6521 + mem[_6521]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6521 + ceil32(return_data.size) + floor32(mem[_6521 + mem[_6521]]) + 1
                                mem[_6521 + ceil32(return_data.size)] = _6713
                                require _6617 + (32 * _6713) + 32 <= return_data.size
                                idx = 0
                                s = _6521 + _6617 + 32
                                t = _6521 + ceil32(return_data.size) + 32
                                while idx < _6713:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6713:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4793
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4793
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8057 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8057] == bool(mem[_8057])
                            else:
                                _2586 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2682 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2682
                                require _2586 + (32 * _2682) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2586 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2682:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2682:
                                    revert with 'NH{q', 50
                                _4794 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4794
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4794, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6522 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6618 = mem[_6522]
                                require mem[_6522] <= test266151307()
                                require _6522 + mem[_6522] + 31 < _6522 + return_data.size
                                _6714 = mem[_6522 + mem[_6522]]
                                if mem[_6522 + mem[_6522]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6522 + ceil32(return_data.size) + floor32(mem[_6522 + mem[_6522]]) + 1 > test266151307() or floor32(mem[_6522 + mem[_6522]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6522 + ceil32(return_data.size) + floor32(mem[_6522 + mem[_6522]]) + 1
                                mem[_6522 + ceil32(return_data.size)] = _6714
                                require _6618 + (32 * _6714) + 32 <= return_data.size
                                idx = 0
                                s = _6522 + _6618 + 32
                                t = _6522 + ceil32(return_data.size) + 32
                                while idx < _6714:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6714:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4794
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4794
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8058 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8058] == bool(mem[_8058])
                        else:
                            mem[256] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg2
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg2
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2587 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2683 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2683
                                require _2587 + (32 * _2683) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2587 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2683:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2683:
                                    revert with 'NH{q', 50
                                _4795 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4795
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4795, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6523 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6619 = mem[_6523]
                                require mem[_6523] <= test266151307()
                                require _6523 + mem[_6523] + 31 < _6523 + return_data.size
                                _6715 = mem[_6523 + mem[_6523]]
                                if mem[_6523 + mem[_6523]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6523 + ceil32(return_data.size) + floor32(mem[_6523 + mem[_6523]]) + 1 > test266151307() or floor32(mem[_6523 + mem[_6523]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6523 + ceil32(return_data.size) + floor32(mem[_6523 + mem[_6523]]) + 1
                                mem[_6523 + ceil32(return_data.size)] = _6715
                                require _6619 + (32 * _6715) + 32 <= return_data.size
                                idx = 0
                                s = _6523 + _6619 + 32
                                t = _6523 + ceil32(return_data.size) + 32
                                while idx < _6715:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6715:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4795
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4795
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8059 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8059] == bool(mem[_8059])
                            else:
                                _2588 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2684 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2684
                                require _2588 + (32 * _2684) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2588 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2684:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2684:
                                    revert with 'NH{q', 50
                                _4796 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4796
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4796, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6524 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6620 = mem[_6524]
                                require mem[_6524] <= test266151307()
                                require _6524 + mem[_6524] + 31 < _6524 + return_data.size
                                _6716 = mem[_6524 + mem[_6524]]
                                if mem[_6524 + mem[_6524]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6524 + ceil32(return_data.size) + floor32(mem[_6524 + mem[_6524]]) + 1 > test266151307() or floor32(mem[_6524 + mem[_6524]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6524 + ceil32(return_data.size) + floor32(mem[_6524 + mem[_6524]]) + 1
                                mem[_6524 + ceil32(return_data.size)] = _6716
                                require _6620 + (32 * _6716) + 32 <= return_data.size
                                idx = 0
                                s = _6524 + _6620 + 32
                                t = _6524 + ceil32(return_data.size) + 32
                                while idx < _6716:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6716:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4796
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4796
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8060 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8060] == bool(mem[_8060])
            else:
                mem[128] = address(ext_call.return_data[0])
                if not arg2:
                    mem[160] = address(ext_call.return_data[0])
                    if not arg2:
                        mem[224] = address(ext_call.return_data[0])
                        if not arg2:
                            mem[256] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg2
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg2
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2589 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2685 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2685
                                require _2589 + (32 * _2685) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2589 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2685:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2685:
                                    revert with 'NH{q', 50
                                _4797 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4797
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4797, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6525 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6621 = mem[_6525]
                                require mem[_6525] <= test266151307()
                                require _6525 + mem[_6525] + 31 < _6525 + return_data.size
                                _6717 = mem[_6525 + mem[_6525]]
                                if mem[_6525 + mem[_6525]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6525 + ceil32(return_data.size) + floor32(mem[_6525 + mem[_6525]]) + 1 > test266151307() or floor32(mem[_6525 + mem[_6525]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6525 + ceil32(return_data.size) + floor32(mem[_6525 + mem[_6525]]) + 1
                                mem[_6525 + ceil32(return_data.size)] = _6717
                                require _6621 + (32 * _6717) + 32 <= return_data.size
                                idx = 0
                                s = _6525 + _6621 + 32
                                t = _6525 + ceil32(return_data.size) + 32
                                while idx < _6717:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6717:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4797
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4797
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8061 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8061] == bool(mem[_8061])
                            else:
                                _2590 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2686 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2686
                                require _2590 + (32 * _2686) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2590 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2686:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2686:
                                    revert with 'NH{q', 50
                                _4798 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4798
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4798, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6526 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6622 = mem[_6526]
                                require mem[_6526] <= test266151307()
                                require _6526 + mem[_6526] + 31 < _6526 + return_data.size
                                _6718 = mem[_6526 + mem[_6526]]
                                if mem[_6526 + mem[_6526]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6526 + ceil32(return_data.size) + floor32(mem[_6526 + mem[_6526]]) + 1 > test266151307() or floor32(mem[_6526 + mem[_6526]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6526 + ceil32(return_data.size) + floor32(mem[_6526 + mem[_6526]]) + 1
                                mem[_6526 + ceil32(return_data.size)] = _6718
                                require _6622 + (32 * _6718) + 32 <= return_data.size
                                idx = 0
                                s = _6526 + _6622 + 32
                                t = _6526 + ceil32(return_data.size) + 32
                                while idx < _6718:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6718:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4798
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4798
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8062 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8062] == bool(mem[_8062])
                        else:
                            mem[256] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg2
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg2
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2591 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2687 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2687
                                require _2591 + (32 * _2687) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2591 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2687:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2687:
                                    revert with 'NH{q', 50
                                _4799 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4799
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4799, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6527 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6623 = mem[_6527]
                                require mem[_6527] <= test266151307()
                                require _6527 + mem[_6527] + 31 < _6527 + return_data.size
                                _6719 = mem[_6527 + mem[_6527]]
                                if mem[_6527 + mem[_6527]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6527 + ceil32(return_data.size) + floor32(mem[_6527 + mem[_6527]]) + 1 > test266151307() or floor32(mem[_6527 + mem[_6527]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6527 + ceil32(return_data.size) + floor32(mem[_6527 + mem[_6527]]) + 1
                                mem[_6527 + ceil32(return_data.size)] = _6719
                                require _6623 + (32 * _6719) + 32 <= return_data.size
                                idx = 0
                                s = _6527 + _6623 + 32
                                t = _6527 + ceil32(return_data.size) + 32
                                while idx < _6719:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6719:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4799
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4799
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8063 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8063] == bool(mem[_8063])
                            else:
                                _2592 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2688 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2688
                                require _2592 + (32 * _2688) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2592 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2688:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2688:
                                    revert with 'NH{q', 50
                                _4800 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4800
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4800, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6528 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6624 = mem[_6528]
                                require mem[_6528] <= test266151307()
                                require _6528 + mem[_6528] + 31 < _6528 + return_data.size
                                _6720 = mem[_6528 + mem[_6528]]
                                if mem[_6528 + mem[_6528]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6528 + ceil32(return_data.size) + floor32(mem[_6528 + mem[_6528]]) + 1 > test266151307() or floor32(mem[_6528 + mem[_6528]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6528 + ceil32(return_data.size) + floor32(mem[_6528 + mem[_6528]]) + 1
                                mem[_6528 + ceil32(return_data.size)] = _6720
                                require _6624 + (32 * _6720) + 32 <= return_data.size
                                idx = 0
                                s = _6528 + _6624 + 32
                                t = _6528 + ceil32(return_data.size) + 32
                                while idx < _6720:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6720:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4800
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4800
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8064 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8064] == bool(mem[_8064])
                    else:
                        mem[224] = ext_call.return_data[12 len 20]
                        if not arg2:
                            mem[256] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg2
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg2
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2593 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2689 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2689
                                require _2593 + (32 * _2689) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2593 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2689:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2689:
                                    revert with 'NH{q', 50
                                _4801 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4801
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4801, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6529 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6625 = mem[_6529]
                                require mem[_6529] <= test266151307()
                                require _6529 + mem[_6529] + 31 < _6529 + return_data.size
                                _6721 = mem[_6529 + mem[_6529]]
                                if mem[_6529 + mem[_6529]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6529 + ceil32(return_data.size) + floor32(mem[_6529 + mem[_6529]]) + 1 > test266151307() or floor32(mem[_6529 + mem[_6529]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6529 + ceil32(return_data.size) + floor32(mem[_6529 + mem[_6529]]) + 1
                                mem[_6529 + ceil32(return_data.size)] = _6721
                                require _6625 + (32 * _6721) + 32 <= return_data.size
                                idx = 0
                                s = _6529 + _6625 + 32
                                t = _6529 + ceil32(return_data.size) + 32
                                while idx < _6721:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6721:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4801
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4801
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8065 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8065] == bool(mem[_8065])
                            else:
                                _2594 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2690 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2690
                                require _2594 + (32 * _2690) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2594 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2690:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2690:
                                    revert with 'NH{q', 50
                                _4802 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4802
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4802, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6530 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6626 = mem[_6530]
                                require mem[_6530] <= test266151307()
                                require _6530 + mem[_6530] + 31 < _6530 + return_data.size
                                _6722 = mem[_6530 + mem[_6530]]
                                if mem[_6530 + mem[_6530]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6530 + ceil32(return_data.size) + floor32(mem[_6530 + mem[_6530]]) + 1 > test266151307() or floor32(mem[_6530 + mem[_6530]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6530 + ceil32(return_data.size) + floor32(mem[_6530 + mem[_6530]]) + 1
                                mem[_6530 + ceil32(return_data.size)] = _6722
                                require _6626 + (32 * _6722) + 32 <= return_data.size
                                idx = 0
                                s = _6530 + _6626 + 32
                                t = _6530 + ceil32(return_data.size) + 32
                                while idx < _6722:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6722:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4802
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4802
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8066 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8066] == bool(mem[_8066])
                        else:
                            mem[256] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg2
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg2
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2595 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2691 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2691
                                require _2595 + (32 * _2691) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2595 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2691:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2691:
                                    revert with 'NH{q', 50
                                _4803 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4803
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4803, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6531 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6627 = mem[_6531]
                                require mem[_6531] <= test266151307()
                                require _6531 + mem[_6531] + 31 < _6531 + return_data.size
                                _6723 = mem[_6531 + mem[_6531]]
                                if mem[_6531 + mem[_6531]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6531 + ceil32(return_data.size) + floor32(mem[_6531 + mem[_6531]]) + 1 > test266151307() or floor32(mem[_6531 + mem[_6531]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6531 + ceil32(return_data.size) + floor32(mem[_6531 + mem[_6531]]) + 1
                                mem[_6531 + ceil32(return_data.size)] = _6723
                                require _6627 + (32 * _6723) + 32 <= return_data.size
                                idx = 0
                                s = _6531 + _6627 + 32
                                t = _6531 + ceil32(return_data.size) + 32
                                while idx < _6723:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6723:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4803
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4803
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8067 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8067] == bool(mem[_8067])
                            else:
                                _2596 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2692 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2692
                                require _2596 + (32 * _2692) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2596 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2692:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2692:
                                    revert with 'NH{q', 50
                                _4804 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4804
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4804, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6532 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6628 = mem[_6532]
                                require mem[_6532] <= test266151307()
                                require _6532 + mem[_6532] + 31 < _6532 + return_data.size
                                _6724 = mem[_6532 + mem[_6532]]
                                if mem[_6532 + mem[_6532]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6532 + ceil32(return_data.size) + floor32(mem[_6532 + mem[_6532]]) + 1 > test266151307() or floor32(mem[_6532 + mem[_6532]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6532 + ceil32(return_data.size) + floor32(mem[_6532 + mem[_6532]]) + 1
                                mem[_6532 + ceil32(return_data.size)] = _6724
                                require _6628 + (32 * _6724) + 32 <= return_data.size
                                idx = 0
                                s = _6532 + _6628 + 32
                                t = _6532 + ceil32(return_data.size) + 32
                                while idx < _6724:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6724:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4804
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4804
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8068 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8068] == bool(mem[_8068])
                else:
                    mem[160] = ext_call.return_data[12 len 20]
                    if not arg2:
                        mem[224] = address(ext_call.return_data[0])
                        if not arg2:
                            mem[256] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg2
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg2
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2597 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2693 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2693
                                require _2597 + (32 * _2693) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2597 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2693:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2693:
                                    revert with 'NH{q', 50
                                _4805 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4805
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4805, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6533 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6629 = mem[_6533]
                                require mem[_6533] <= test266151307()
                                require _6533 + mem[_6533] + 31 < _6533 + return_data.size
                                _6725 = mem[_6533 + mem[_6533]]
                                if mem[_6533 + mem[_6533]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6533 + ceil32(return_data.size) + floor32(mem[_6533 + mem[_6533]]) + 1 > test266151307() or floor32(mem[_6533 + mem[_6533]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6533 + ceil32(return_data.size) + floor32(mem[_6533 + mem[_6533]]) + 1
                                mem[_6533 + ceil32(return_data.size)] = _6725
                                require _6629 + (32 * _6725) + 32 <= return_data.size
                                idx = 0
                                s = _6533 + _6629 + 32
                                t = _6533 + ceil32(return_data.size) + 32
                                while idx < _6725:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6725:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4805
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4805
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8069 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8069] == bool(mem[_8069])
                            else:
                                _2598 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2694 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2694
                                require _2598 + (32 * _2694) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2598 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2694:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2694:
                                    revert with 'NH{q', 50
                                _4806 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4806
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4806, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6534 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6630 = mem[_6534]
                                require mem[_6534] <= test266151307()
                                require _6534 + mem[_6534] + 31 < _6534 + return_data.size
                                _6726 = mem[_6534 + mem[_6534]]
                                if mem[_6534 + mem[_6534]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6534 + ceil32(return_data.size) + floor32(mem[_6534 + mem[_6534]]) + 1 > test266151307() or floor32(mem[_6534 + mem[_6534]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6534 + ceil32(return_data.size) + floor32(mem[_6534 + mem[_6534]]) + 1
                                mem[_6534 + ceil32(return_data.size)] = _6726
                                require _6630 + (32 * _6726) + 32 <= return_data.size
                                idx = 0
                                s = _6534 + _6630 + 32
                                t = _6534 + ceil32(return_data.size) + 32
                                while idx < _6726:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6726:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4806
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4806
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8070 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8070] == bool(mem[_8070])
                        else:
                            mem[256] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg2
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg2
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2599 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2695 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2695
                                require _2599 + (32 * _2695) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2599 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2695:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2695:
                                    revert with 'NH{q', 50
                                _4807 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4807
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4807, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6535 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6631 = mem[_6535]
                                require mem[_6535] <= test266151307()
                                require _6535 + mem[_6535] + 31 < _6535 + return_data.size
                                _6727 = mem[_6535 + mem[_6535]]
                                if mem[_6535 + mem[_6535]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6535 + ceil32(return_data.size) + floor32(mem[_6535 + mem[_6535]]) + 1 > test266151307() or floor32(mem[_6535 + mem[_6535]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6535 + ceil32(return_data.size) + floor32(mem[_6535 + mem[_6535]]) + 1
                                mem[_6535 + ceil32(return_data.size)] = _6727
                                require _6631 + (32 * _6727) + 32 <= return_data.size
                                idx = 0
                                s = _6535 + _6631 + 32
                                t = _6535 + ceil32(return_data.size) + 32
                                while idx < _6727:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6727:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4807
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4807
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8071 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8071] == bool(mem[_8071])
                            else:
                                _2600 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2696 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2696
                                require _2600 + (32 * _2696) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2600 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2696:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2696:
                                    revert with 'NH{q', 50
                                _4808 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4808
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4808, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6536 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6632 = mem[_6536]
                                require mem[_6536] <= test266151307()
                                require _6536 + mem[_6536] + 31 < _6536 + return_data.size
                                _6728 = mem[_6536 + mem[_6536]]
                                if mem[_6536 + mem[_6536]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6536 + ceil32(return_data.size) + floor32(mem[_6536 + mem[_6536]]) + 1 > test266151307() or floor32(mem[_6536 + mem[_6536]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6536 + ceil32(return_data.size) + floor32(mem[_6536 + mem[_6536]]) + 1
                                mem[_6536 + ceil32(return_data.size)] = _6728
                                require _6632 + (32 * _6728) + 32 <= return_data.size
                                idx = 0
                                s = _6536 + _6632 + 32
                                t = _6536 + ceil32(return_data.size) + 32
                                while idx < _6728:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6728:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4808
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4808
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8072 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8072] == bool(mem[_8072])
                    else:
                        mem[224] = ext_call.return_data[12 len 20]
                        if not arg2:
                            mem[256] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg2
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg2
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2601 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2697 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2697
                                require _2601 + (32 * _2697) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2601 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2697:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2697:
                                    revert with 'NH{q', 50
                                _4809 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4809
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4809, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6537 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6633 = mem[_6537]
                                require mem[_6537] <= test266151307()
                                require _6537 + mem[_6537] + 31 < _6537 + return_data.size
                                _6729 = mem[_6537 + mem[_6537]]
                                if mem[_6537 + mem[_6537]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6537 + ceil32(return_data.size) + floor32(mem[_6537 + mem[_6537]]) + 1 > test266151307() or floor32(mem[_6537 + mem[_6537]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6537 + ceil32(return_data.size) + floor32(mem[_6537 + mem[_6537]]) + 1
                                mem[_6537 + ceil32(return_data.size)] = _6729
                                require _6633 + (32 * _6729) + 32 <= return_data.size
                                idx = 0
                                s = _6537 + _6633 + 32
                                t = _6537 + ceil32(return_data.size) + 32
                                while idx < _6729:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6729:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4809
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4809
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8073 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8073] == bool(mem[_8073])
                            else:
                                _2602 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2698 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2698
                                require _2602 + (32 * _2698) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2602 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2698:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2698:
                                    revert with 'NH{q', 50
                                _4810 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4810
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4810, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6538 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6634 = mem[_6538]
                                require mem[_6538] <= test266151307()
                                require _6538 + mem[_6538] + 31 < _6538 + return_data.size
                                _6730 = mem[_6538 + mem[_6538]]
                                if mem[_6538 + mem[_6538]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6538 + ceil32(return_data.size) + floor32(mem[_6538 + mem[_6538]]) + 1 > test266151307() or floor32(mem[_6538 + mem[_6538]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6538 + ceil32(return_data.size) + floor32(mem[_6538 + mem[_6538]]) + 1
                                mem[_6538 + ceil32(return_data.size)] = _6730
                                require _6634 + (32 * _6730) + 32 <= return_data.size
                                idx = 0
                                s = _6538 + _6634 + 32
                                t = _6538 + ceil32(return_data.size) + 32
                                while idx < _6730:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6730:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4810
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4810
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8074 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8074] == bool(mem[_8074])
                        else:
                            mem[256] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[(2 * ceil32(return_data.size)) + 324] = arg2
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg2
                            mem[(4 * ceil32(return_data.size)) + 324] = 64
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = 224
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            if not arg2:
                                _2603 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2699 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2699
                                require _2603 + (32 * _2699) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2603 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2699:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2699:
                                    revert with 'NH{q', 50
                                _4811 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4811
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4811, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6539 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6635 = mem[_6539]
                                require mem[_6539] <= test266151307()
                                require _6539 + mem[_6539] + 31 < _6539 + return_data.size
                                _6731 = mem[_6539 + mem[_6539]]
                                if mem[_6539 + mem[_6539]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6539 + ceil32(return_data.size) + floor32(mem[_6539 + mem[_6539]]) + 1 > test266151307() or floor32(mem[_6539 + mem[_6539]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6539 + ceil32(return_data.size) + floor32(mem[_6539 + mem[_6539]]) + 1
                                mem[_6539 + ceil32(return_data.size)] = _6731
                                require _6635 + (32 * _6731) + 32 <= return_data.size
                                idx = 0
                                s = _6539 + _6635 + 32
                                t = _6539 + ceil32(return_data.size) + 32
                                while idx < _6731:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6731:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4811
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4811
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8075 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8075] == bool(mem[_8075])
                            else:
                                _2604 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                                _2700 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 289
                                mem[(6 * ceil32(return_data.size)) + 288] = _2700
                                require _2604 + (32 * _2700) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _2604 + 320
                                t = (6 * ceil32(return_data.size)) + 320
                                while idx < _2700:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= _2700:
                                    revert with 'NH{q', 50
                                _4812 = mem[(6 * ceil32(return_data.size)) + 320]
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _4812
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
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp + 60
                                require ext_code.size(stor2)
                                call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _4812, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6540 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6636 = mem[_6540]
                                require mem[_6540] <= test266151307()
                                require _6540 + mem[_6540] + 31 < _6540 + return_data.size
                                _6732 = mem[_6540 + mem[_6540]]
                                if mem[_6540 + mem[_6540]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6540 + ceil32(return_data.size) + floor32(mem[_6540 + mem[_6540]]) + 1 > test266151307() or floor32(mem[_6540 + mem[_6540]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6540 + ceil32(return_data.size) + floor32(mem[_6540 + mem[_6540]]) + 1
                                mem[_6540 + ceil32(return_data.size)] = _6732
                                require _6636 + (32 * _6732) + 32 <= return_data.size
                                idx = 0
                                s = _6540 + _6636 + 32
                                t = _6540 + ceil32(return_data.size) + 32
                                while idx < _6732:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 1 >= _6732:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4812
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4812
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8076 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8076] == bool(mem[_8076])
}



}

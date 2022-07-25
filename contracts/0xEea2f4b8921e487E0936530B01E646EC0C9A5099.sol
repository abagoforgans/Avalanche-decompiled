contract main {




// =====================  Runtime code  =====================


function approve(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg2)
    staticcall arg2.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 1:
        require ext_code.size(arg2)
        call arg2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -101
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'FAIL TO APPROVE'
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if uint32(call.func_hash) >> 224 != unknown_0x627e84d7(?????):
        require unknown_0x7e5465ba(?????) == uint32(call.func_hash) >> 224
        require calldata.size - 4 >= 64
        require cd[4] == address(cd[4])
        require cd[36] == address(cd[36])
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(cd[4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 1:
            require ext_code.size(address(cd[36]))
            call address(cd[36]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[4]), -101
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'FAIL TO APPROVE'
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).WETH() with:
            gas gas_remaining wei
    mem[576] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 60 > !block.timestamp:
        revert with 0, 17
    mem[544] = block.number
    if not ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[ceil32(return_data.size) + 580] = this.address
    mem[ceil32(return_data.size) + 612] = address(cd[4])
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(cd[4])
    mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 1:
        if 0 >= ('cd', 68).length:
            revert with 0, 50
        require ('cd', 68)[0] == address(('cd', 68)[0])
        mem[(2 * ceil32(return_data.size)) + 580] = this.address
        mem[(2 * ceil32(return_data.size)) + 612] = address(cd[4])
        require ext_code.size(address(('cd', 68)[0]))
        staticcall address(('cd', 68)[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(cd[4])
        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 1:
            mem[(4 * ceil32(return_data.size)) + 576] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 580] = cd[100]
            mem[(4 * ceil32(return_data.size)) + 612] = 64
            mem[(4 * ceil32(return_data.size)) + 644] = ('cd', 36).length
            idx = 0
            s = cd[36] + 36
            t = (4 * ceil32(return_data.size)) + 676
            while idx < ('cd', 36).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args cd[100], Array(len=('cd', 36).length, data=mem[(4 * ceil32(return_data.size)) + 676 len 32 * ('cd', 36).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 576
            require return_data.size >= 32
            _261 = mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32
            require mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 607 < (4 * ceil32(return_data.size)) + return_data.size + 576
            _265 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576] > test266151307():
                revert with 0, 65
            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576]) + 577 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576]) + 1 < 0:
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576]) + 577
            mem[(6 * ceil32(return_data.size)) + 576] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576]
            require return_data.size >= _261 + (32 * _265) + 32
            mem[(6 * ceil32(return_data.size)) + 608 len 32 * _265] = mem[(4 * ceil32(return_data.size)) + _261 + 608 len 32 * _265]
            if ('cd', 36).length < 1:
                revert with 0, 17
            if ('cd', 36).length - 1 >= _265:
                revert with 0, 50
            mem[416] = mem[(32 * ('cd', 36).length - 1) + (6 * ceil32(return_data.size)) + 608]
            if ('cd', 36).length < 1:
                revert with 0, 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _641 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _645 = mem[_641]
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = ('cd', 36).length
            idx = 0
            s = cd[36] + 36
            t = mem[64] + 164
            while idx < ('cd', 36).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = block.timestamp + 60
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value cd[100] wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[mem[64] + 164 len 32 * ('cd', 36).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if gas_remaining < gas_remaining:
                revert with 0, 17
            mem[352] = 0
            if ('cd', 36).length < 1:
                revert with 0, 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _981 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_981] < _645:
                revert with 0, 17
            mem[448] = mem[_981] - _645
            if ('cd', 68).length < 1:
                revert with 0, 17
            if ('cd', 68).length - 1 >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
            if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                _989 = mem[448]
                _990 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _989
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = mem[64] + 100
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _990 + (32 * ('cd', 68).length) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1293 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1301 = mem[_1293]
                require mem[_1293] <= test266151307()
                require _1293 + mem[_1293] + 31 < _1293 + return_data.size
                _1309 = mem[_1293 + mem[_1293]]
                if mem[_1293 + mem[_1293]] > test266151307():
                    revert with 0, 65
                if _1293 + ceil32(return_data.size) + ceil32(32 * mem[_1293 + mem[_1293]]) + 1 > test266151307() or ceil32(32 * mem[_1293 + mem[_1293]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _1293 + ceil32(return_data.size) + ceil32(32 * mem[_1293 + mem[_1293]]) + 1
                mem[_1293 + ceil32(return_data.size)] = _1309
                require return_data.size >= _1301 + (32 * _1309) + 32
                mem[_1293 + ceil32(return_data.size) + 32 len 32 * _1309] = mem[_1293 + _1301 + 32 len 32 * _1309]
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= _1309:
                    revert with 0, 50
                mem[480] = mem[(32 * ('cd', 68).length - 1) + _1293 + ceil32(return_data.size) + 32]
                _1566 = mem[448]
                _1567 = mem[64]
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1566
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = mem[64] + 196
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1567 + 100] = this.address
                mem[_1567 + 132] = block.timestamp + 60
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1567 + (32 * ('cd', 68).length) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                mem[384] = 0
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    mem[512] = 0
                    mem[mem[64]] = mem[352]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = mem[416]
                    mem[mem[64] + 96] = mem[448]
                    mem[mem[64] + 128] = mem[480]
                    mem[mem[64] + 160] = 0
                    mem[mem[64] + 192] = mem[544]
                    return mem[mem[64]], 0, mem[mem[64] + 64 len 96], 0, mem[mem[64] + 192]
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1869 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1869] < eth.balance(this.address):
                    revert with 0, 17
                mem[512] = mem[_1869] - eth.balance(this.address)
            else:
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1017 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1026 = mem[_1017]
                _1033 = mem[448]
                _1034 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1033
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = mem[64] + 100
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1034 + (32 * ('cd', 68).length) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1294 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1302 = mem[_1294]
                require mem[_1294] <= test266151307()
                require _1294 + mem[_1294] + 31 < _1294 + return_data.size
                _1310 = mem[_1294 + mem[_1294]]
                if mem[_1294 + mem[_1294]] > test266151307():
                    revert with 0, 65
                if _1294 + ceil32(return_data.size) + ceil32(32 * mem[_1294 + mem[_1294]]) + 1 > test266151307() or ceil32(32 * mem[_1294 + mem[_1294]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _1294 + ceil32(return_data.size) + ceil32(32 * mem[_1294 + mem[_1294]]) + 1
                mem[_1294 + ceil32(return_data.size)] = _1310
                require return_data.size >= _1302 + (32 * _1310) + 32
                mem[_1294 + ceil32(return_data.size) + 32 len 32 * _1310] = mem[_1294 + _1302 + 32 len 32 * _1310]
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= _1310:
                    revert with 0, 50
                mem[480] = mem[(32 * ('cd', 68).length - 1) + _1294 + ceil32(return_data.size) + 32]
                _1569 = mem[448]
                _1570 = mem[64]
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1569
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = mem[64] + 196
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1570 + 100] = this.address
                mem[_1570 + 132] = block.timestamp + 60
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1570 + (32 * ('cd', 68).length) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                mem[384] = 0
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                    if eth.balance(this.address) < _1026:
                        revert with 0, 17
                    mem[512] = eth.balance(this.address) - _1026
                    mem[mem[64]] = mem[352]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = mem[416]
                    mem[mem[64] + 96] = mem[448]
                    mem[mem[64] + 128] = mem[480]
                    mem[mem[64] + 160] = eth.balance(this.address) - _1026
                    mem[mem[64] + 192] = mem[544]
                    return mem[mem[64]], 0, mem[mem[64] + 64 len 96], eth.balance(this.address) - _1026, mem[mem[64] + 192]
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1870 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1870] < _1026:
                    revert with 0, 17
                mem[512] = mem[_1870] - _1026
        else:
            mem[(4 * ceil32(return_data.size)) + 580] = address(cd[4])
            mem[(4 * ceil32(return_data.size)) + 612] = -101
            require ext_code.size(address(('cd', 68)[0]))
            call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[4]), -101
            mem[(4 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'FAIL TO APPROVE'
            mem[(6 * ceil32(return_data.size)) + 576] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 580] = cd[100]
            mem[(6 * ceil32(return_data.size)) + 612] = 64
            mem[(6 * ceil32(return_data.size)) + 644] = ('cd', 36).length
            idx = 0
            s = cd[36] + 36
            t = (6 * ceil32(return_data.size)) + 676
            while idx < ('cd', 36).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args cd[100], Array(len=('cd', 36).length, data=mem[(6 * ceil32(return_data.size)) + 676 len 32 * ('cd', 36).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 576
            require return_data.size >= 32
            _262 = mem[(6 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32
            require mem[(6 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 607 < (6 * ceil32(return_data.size)) + return_data.size + 576
            _266 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576]
            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576] > test266151307():
                revert with 0, 65
            if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576]) + 577 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576]) + 1 < 0:
                revert with 0, 65
            mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576]) + 577
            mem[(7 * ceil32(return_data.size)) + 576] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576]
            require return_data.size >= _262 + (32 * _266) + 32
            mem[(7 * ceil32(return_data.size)) + 608 len 32 * _266] = mem[(6 * ceil32(return_data.size)) + _262 + 608 len 32 * _266]
            if ('cd', 36).length < 1:
                revert with 0, 17
            if ('cd', 36).length - 1 >= _266:
                revert with 0, 50
            mem[416] = mem[(32 * ('cd', 36).length - 1) + (7 * ceil32(return_data.size)) + 608]
            if ('cd', 36).length < 1:
                revert with 0, 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _642 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _646 = mem[_642]
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = ('cd', 36).length
            idx = 0
            s = cd[36] + 36
            t = mem[64] + 164
            while idx < ('cd', 36).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = block.timestamp + 60
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value cd[100] wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[mem[64] + 164 len 32 * ('cd', 36).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if gas_remaining < gas_remaining:
                revert with 0, 17
            mem[352] = 0
            if ('cd', 36).length < 1:
                revert with 0, 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _982 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_982] < _646:
                revert with 0, 17
            mem[448] = mem[_982] - _646
            if ('cd', 68).length < 1:
                revert with 0, 17
            if ('cd', 68).length - 1 >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
            if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                _991 = mem[448]
                _992 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _991
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = mem[64] + 100
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _992 + (32 * ('cd', 68).length) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1295 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1303 = mem[_1295]
                require mem[_1295] <= test266151307()
                require _1295 + mem[_1295] + 31 < _1295 + return_data.size
                _1311 = mem[_1295 + mem[_1295]]
                if mem[_1295 + mem[_1295]] > test266151307():
                    revert with 0, 65
                if _1295 + ceil32(return_data.size) + ceil32(32 * mem[_1295 + mem[_1295]]) + 1 > test266151307() or ceil32(32 * mem[_1295 + mem[_1295]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _1295 + ceil32(return_data.size) + ceil32(32 * mem[_1295 + mem[_1295]]) + 1
                mem[_1295 + ceil32(return_data.size)] = _1311
                require return_data.size >= _1303 + (32 * _1311) + 32
                mem[_1295 + ceil32(return_data.size) + 32 len 32 * _1311] = mem[_1295 + _1303 + 32 len 32 * _1311]
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= _1311:
                    revert with 0, 50
                mem[480] = mem[(32 * ('cd', 68).length - 1) + _1295 + ceil32(return_data.size) + 32]
                _1572 = mem[448]
                _1573 = mem[64]
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1572
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = mem[64] + 196
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1573 + 100] = this.address
                mem[_1573 + 132] = block.timestamp + 60
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1573 + (32 * ('cd', 68).length) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                mem[384] = 0
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    mem[512] = 0
                    mem[mem[64]] = mem[352]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = mem[416]
                    mem[mem[64] + 96] = mem[448]
                    mem[mem[64] + 128] = mem[480]
                    mem[mem[64] + 160] = 0
                    mem[mem[64] + 192] = mem[544]
                    return mem[mem[64]], 0, mem[mem[64] + 64 len 96], 0, mem[mem[64] + 192]
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1871 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1871] < eth.balance(this.address):
                    revert with 0, 17
                mem[512] = mem[_1871] - eth.balance(this.address)
            else:
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1018 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1028 = mem[_1018]
                _1035 = mem[448]
                _1036 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1035
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = mem[64] + 100
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1036 + (32 * ('cd', 68).length) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1296 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1304 = mem[_1296]
                require mem[_1296] <= test266151307()
                require _1296 + mem[_1296] + 31 < _1296 + return_data.size
                _1312 = mem[_1296 + mem[_1296]]
                if mem[_1296 + mem[_1296]] > test266151307():
                    revert with 0, 65
                if _1296 + ceil32(return_data.size) + ceil32(32 * mem[_1296 + mem[_1296]]) + 1 > test266151307() or ceil32(32 * mem[_1296 + mem[_1296]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _1296 + ceil32(return_data.size) + ceil32(32 * mem[_1296 + mem[_1296]]) + 1
                mem[_1296 + ceil32(return_data.size)] = _1312
                require return_data.size >= _1304 + (32 * _1312) + 32
                mem[_1296 + ceil32(return_data.size) + 32 len 32 * _1312] = mem[_1296 + _1304 + 32 len 32 * _1312]
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= _1312:
                    revert with 0, 50
                mem[480] = mem[(32 * ('cd', 68).length - 1) + _1296 + ceil32(return_data.size) + 32]
                _1575 = mem[448]
                _1576 = mem[64]
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1575
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = mem[64] + 196
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1576 + 100] = this.address
                mem[_1576 + 132] = block.timestamp + 60
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1576 + (32 * ('cd', 68).length) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                mem[384] = 0
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                    if eth.balance(this.address) < _1028:
                        revert with 0, 17
                    mem[512] = eth.balance(this.address) - _1028
                    mem[mem[64]] = mem[352]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = mem[416]
                    mem[mem[64] + 96] = mem[448]
                    mem[mem[64] + 128] = mem[480]
                    mem[mem[64] + 160] = eth.balance(this.address) - _1028
                    mem[mem[64] + 192] = mem[544]
                    return mem[mem[64]], 0, mem[mem[64] + 64 len 96], eth.balance(this.address) - _1028, mem[mem[64] + 192]
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1872 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1872] < _1028:
                    revert with 0, 17
                mem[512] = mem[_1872] - _1028
    else:
        mem[(2 * ceil32(return_data.size)) + 580] = address(cd[4])
        mem[(2 * ceil32(return_data.size)) + 612] = -101
        require ext_code.size(address(('cd', 36)[0]))
        call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), -101
        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'FAIL TO APPROVE'
        if 0 >= ('cd', 68).length:
            revert with 0, 50
        require ('cd', 68)[0] == address(('cd', 68)[0])
        mem[(4 * ceil32(return_data.size)) + 580] = this.address
        mem[(4 * ceil32(return_data.size)) + 612] = address(cd[4])
        require ext_code.size(address(('cd', 68)[0]))
        staticcall address(('cd', 68)[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(cd[4])
        mem[(4 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 1:
            mem[(6 * ceil32(return_data.size)) + 576] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 580] = cd[100]
            mem[(6 * ceil32(return_data.size)) + 612] = 64
            mem[(6 * ceil32(return_data.size)) + 644] = ('cd', 36).length
            idx = 0
            s = cd[36] + 36
            t = (6 * ceil32(return_data.size)) + 676
            while idx < ('cd', 36).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args cd[100], Array(len=('cd', 36).length, data=mem[(6 * ceil32(return_data.size)) + 676 len 32 * ('cd', 36).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 576
            require return_data.size >= 32
            _263 = mem[(6 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32
            require mem[(6 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 607 < (6 * ceil32(return_data.size)) + return_data.size + 576
            _267 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576]
            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576] > test266151307():
                revert with 0, 65
            if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576]) + 577 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576]) + 1 < 0:
                revert with 0, 65
            mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576]) + 577
            mem[(7 * ceil32(return_data.size)) + 576] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576]
            require return_data.size >= _263 + (32 * _267) + 32
            mem[(7 * ceil32(return_data.size)) + 608 len 32 * _267] = mem[(6 * ceil32(return_data.size)) + _263 + 608 len 32 * _267]
            if ('cd', 36).length < 1:
                revert with 0, 17
            if ('cd', 36).length - 1 >= _267:
                revert with 0, 50
            mem[416] = mem[(32 * ('cd', 36).length - 1) + (7 * ceil32(return_data.size)) + 608]
            if ('cd', 36).length < 1:
                revert with 0, 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _643 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _647 = mem[_643]
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = ('cd', 36).length
            idx = 0
            s = cd[36] + 36
            t = mem[64] + 164
            while idx < ('cd', 36).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = block.timestamp + 60
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value cd[100] wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[mem[64] + 164 len 32 * ('cd', 36).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if gas_remaining < gas_remaining:
                revert with 0, 17
            mem[352] = 0
            if ('cd', 36).length < 1:
                revert with 0, 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _983 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_983] < _647:
                revert with 0, 17
            mem[448] = mem[_983] - _647
            if ('cd', 68).length < 1:
                revert with 0, 17
            if ('cd', 68).length - 1 >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
            if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                _993 = mem[448]
                _994 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _993
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = mem[64] + 100
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _994 + (32 * ('cd', 68).length) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1297 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1305 = mem[_1297]
                require mem[_1297] <= test266151307()
                require _1297 + mem[_1297] + 31 < _1297 + return_data.size
                _1313 = mem[_1297 + mem[_1297]]
                if mem[_1297 + mem[_1297]] > test266151307():
                    revert with 0, 65
                if _1297 + ceil32(return_data.size) + ceil32(32 * mem[_1297 + mem[_1297]]) + 1 > test266151307() or ceil32(32 * mem[_1297 + mem[_1297]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _1297 + ceil32(return_data.size) + ceil32(32 * mem[_1297 + mem[_1297]]) + 1
                mem[_1297 + ceil32(return_data.size)] = _1313
                require return_data.size >= _1305 + (32 * _1313) + 32
                mem[_1297 + ceil32(return_data.size) + 32 len 32 * _1313] = mem[_1297 + _1305 + 32 len 32 * _1313]
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= _1313:
                    revert with 0, 50
                mem[480] = mem[(32 * ('cd', 68).length - 1) + _1297 + ceil32(return_data.size) + 32]
                _1578 = mem[448]
                _1579 = mem[64]
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1578
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = mem[64] + 196
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1579 + 100] = this.address
                mem[_1579 + 132] = block.timestamp + 60
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1579 + (32 * ('cd', 68).length) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                mem[384] = 0
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    mem[512] = 0
                    mem[mem[64]] = mem[352]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = mem[416]
                    mem[mem[64] + 96] = mem[448]
                    mem[mem[64] + 128] = mem[480]
                    mem[mem[64] + 160] = 0
                    mem[mem[64] + 192] = mem[544]
                    return mem[mem[64]], 0, mem[mem[64] + 64 len 96], 0, mem[mem[64] + 192]
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1873 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1873] < eth.balance(this.address):
                    revert with 0, 17
                mem[512] = mem[_1873] - eth.balance(this.address)
            else:
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1019 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1030 = mem[_1019]
                _1037 = mem[448]
                _1038 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1037
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = mem[64] + 100
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1038 + (32 * ('cd', 68).length) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1298 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1306 = mem[_1298]
                require mem[_1298] <= test266151307()
                require _1298 + mem[_1298] + 31 < _1298 + return_data.size
                _1314 = mem[_1298 + mem[_1298]]
                if mem[_1298 + mem[_1298]] > test266151307():
                    revert with 0, 65
                if _1298 + ceil32(return_data.size) + ceil32(32 * mem[_1298 + mem[_1298]]) + 1 > test266151307() or ceil32(32 * mem[_1298 + mem[_1298]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _1298 + ceil32(return_data.size) + ceil32(32 * mem[_1298 + mem[_1298]]) + 1
                mem[_1298 + ceil32(return_data.size)] = _1314
                require return_data.size >= _1306 + (32 * _1314) + 32
                mem[_1298 + ceil32(return_data.size) + 32 len 32 * _1314] = mem[_1298 + _1306 + 32 len 32 * _1314]
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= _1314:
                    revert with 0, 50
                mem[480] = mem[(32 * ('cd', 68).length - 1) + _1298 + ceil32(return_data.size) + 32]
                _1581 = mem[448]
                _1582 = mem[64]
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1581
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = mem[64] + 196
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1582 + 100] = this.address
                mem[_1582 + 132] = block.timestamp + 60
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1582 + (32 * ('cd', 68).length) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                mem[384] = 0
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                    if eth.balance(this.address) < _1030:
                        revert with 0, 17
                    mem[512] = eth.balance(this.address) - _1030
                    mem[mem[64]] = mem[352]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = mem[416]
                    mem[mem[64] + 96] = mem[448]
                    mem[mem[64] + 128] = mem[480]
                    mem[mem[64] + 160] = eth.balance(this.address) - _1030
                    mem[mem[64] + 192] = mem[544]
                    return mem[mem[64]], 0, mem[mem[64] + 64 len 96], eth.balance(this.address) - _1030, mem[mem[64] + 192]
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1874 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1874] < _1030:
                    revert with 0, 17
                mem[512] = mem[_1874] - _1030
        else:
            mem[(6 * ceil32(return_data.size)) + 580] = address(cd[4])
            mem[(6 * ceil32(return_data.size)) + 612] = -101
            require ext_code.size(address(('cd', 68)[0]))
            call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[4]), -101
            mem[(6 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'FAIL TO APPROVE'
            mem[(7 * ceil32(return_data.size)) + 576] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 580] = cd[100]
            mem[(7 * ceil32(return_data.size)) + 612] = 64
            mem[(7 * ceil32(return_data.size)) + 644] = ('cd', 36).length
            idx = 0
            s = cd[36] + 36
            t = (7 * ceil32(return_data.size)) + 676
            while idx < ('cd', 36).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args cd[100], Array(len=('cd', 36).length, data=mem[(7 * ceil32(return_data.size)) + 676 len 32 * ('cd', 36).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 576
            require return_data.size >= 32
            _264 = mem[(7 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32
            require mem[(7 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 607 < (7 * ceil32(return_data.size)) + return_data.size + 576
            _268 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576] > test266151307():
                revert with 0, 65
            if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576]) + 577 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576]) + 1 < 0:
                revert with 0, 65
            mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576]) + 577
            mem[(8 * ceil32(return_data.size)) + 576] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, cd[100]) >> 32 + 576]
            require return_data.size >= _264 + (32 * _268) + 32
            mem[(8 * ceil32(return_data.size)) + 608 len 32 * _268] = mem[(7 * ceil32(return_data.size)) + _264 + 608 len 32 * _268]
            if ('cd', 36).length < 1:
                revert with 0, 17
            if ('cd', 36).length - 1 >= _268:
                revert with 0, 50
            mem[416] = mem[(32 * ('cd', 36).length - 1) + (8 * ceil32(return_data.size)) + 608]
            if ('cd', 36).length < 1:
                revert with 0, 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _644 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _648 = mem[_644]
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = ('cd', 36).length
            idx = 0
            s = cd[36] + 36
            t = mem[64] + 164
            while idx < ('cd', 36).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = block.timestamp + 60
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value cd[100] wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[mem[64] + 164 len 32 * ('cd', 36).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if gas_remaining < gas_remaining:
                revert with 0, 17
            mem[352] = 0
            if ('cd', 36).length < 1:
                revert with 0, 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _984 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_984] < _648:
                revert with 0, 17
            mem[448] = mem[_984] - _648
            if ('cd', 68).length < 1:
                revert with 0, 17
            if ('cd', 68).length - 1 >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
            if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                _995 = mem[448]
                _996 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _995
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = mem[64] + 100
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _996 + (32 * ('cd', 68).length) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1299 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1307 = mem[_1299]
                require mem[_1299] <= test266151307()
                require _1299 + mem[_1299] + 31 < _1299 + return_data.size
                _1315 = mem[_1299 + mem[_1299]]
                if mem[_1299 + mem[_1299]] > test266151307():
                    revert with 0, 65
                if _1299 + ceil32(return_data.size) + ceil32(32 * mem[_1299 + mem[_1299]]) + 1 > test266151307() or ceil32(32 * mem[_1299 + mem[_1299]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _1299 + ceil32(return_data.size) + ceil32(32 * mem[_1299 + mem[_1299]]) + 1
                mem[_1299 + ceil32(return_data.size)] = _1315
                require return_data.size >= _1307 + (32 * _1315) + 32
                mem[_1299 + ceil32(return_data.size) + 32 len 32 * _1315] = mem[_1299 + _1307 + 32 len 32 * _1315]
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= _1315:
                    revert with 0, 50
                mem[480] = mem[(32 * ('cd', 68).length - 1) + _1299 + ceil32(return_data.size) + 32]
                _1584 = mem[448]
                _1585 = mem[64]
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1584
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = mem[64] + 196
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1585 + 100] = this.address
                mem[_1585 + 132] = block.timestamp + 60
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1585 + (32 * ('cd', 68).length) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                mem[384] = 0
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    mem[512] = 0
                    mem[mem[64]] = mem[352]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = mem[416]
                    mem[mem[64] + 96] = mem[448]
                    mem[mem[64] + 128] = mem[480]
                    mem[mem[64] + 160] = 0
                    mem[mem[64] + 192] = mem[544]
                    return mem[mem[64]], 0, mem[mem[64] + 64 len 96], 0, mem[mem[64] + 192]
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1875 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1875] < eth.balance(this.address):
                    revert with 0, 17
                mem[512] = mem[_1875] - eth.balance(this.address)
            else:
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1020 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1032 = mem[_1020]
                _1039 = mem[448]
                _1040 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1039
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = mem[64] + 100
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1040 + (32 * ('cd', 68).length) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1300 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1308 = mem[_1300]
                require mem[_1300] <= test266151307()
                require _1300 + mem[_1300] + 31 < _1300 + return_data.size
                _1316 = mem[_1300 + mem[_1300]]
                if mem[_1300 + mem[_1300]] > test266151307():
                    revert with 0, 65
                if _1300 + ceil32(return_data.size) + ceil32(32 * mem[_1300 + mem[_1300]]) + 1 > test266151307() or ceil32(32 * mem[_1300 + mem[_1300]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _1300 + ceil32(return_data.size) + ceil32(32 * mem[_1300 + mem[_1300]]) + 1
                mem[_1300 + ceil32(return_data.size)] = _1316
                require return_data.size >= _1308 + (32 * _1316) + 32
                mem[_1300 + ceil32(return_data.size) + 32 len 32 * _1316] = mem[_1300 + _1308 + 32 len 32 * _1316]
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= _1316:
                    revert with 0, 50
                mem[480] = mem[(32 * ('cd', 68).length - 1) + _1300 + ceil32(return_data.size) + 32]
                _1587 = mem[448]
                _1588 = mem[64]
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1587
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = mem[64] + 196
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1588 + 100] = this.address
                mem[_1588 + 132] = block.timestamp + 60
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1588 + (32 * ('cd', 68).length) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                mem[384] = 0
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                    if eth.balance(this.address) < _1032:
                        revert with 0, 17
                    mem[512] = eth.balance(this.address) - _1032
                    mem[mem[64]] = mem[352]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = mem[416]
                    mem[mem[64] + 96] = mem[448]
                    mem[mem[64] + 128] = mem[480]
                    mem[mem[64] + 160] = eth.balance(this.address) - _1032
                    mem[mem[64] + 192] = mem[544]
                    return mem[mem[64]], 0, mem[mem[64] + 64 len 96], eth.balance(this.address) - _1032, mem[mem[64] + 192]
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1876 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1876] < _1032:
                    revert with 0, 17
                mem[512] = mem[_1876] - _1032
    mem[mem[64]] = mem[352]
    mem[mem[64] + 32] = 0
    mem[mem[64] + 64] = mem[416]
    mem[mem[64] + 96] = mem[448]
    mem[mem[64] + 128] = mem[480]
    mem[mem[64] + 160] = mem[512]
    mem[mem[64] + 192] = mem[544]
    return mem[mem[64]], 0, mem[mem[64] + 64 len 160]
}

function sub_627e84d7(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).WETH() with:
            gas gas_remaining wei
    mem[544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 60 > !block.timestamp:
            revert with 0, 17
        else:
            mem[512] = block.number
            if not ('cd', 36).length:
                revert with 0, 50
            else:
                require ('cd', 36)[0] == address(('cd', 36)[0])
                mem[ceil32(return_data.size) + 548] = this.address
                mem[ceil32(return_data.size) + 580] = address(cd[4])
                require ext_code.size(address(('cd', 36)[0]))
                staticcall address(('cd', 36)[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(cd[4])
                mem[ceil32(return_data.size) + 544] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 1:
                        if 0 >= ('cd', 68).length:
                            revert with 0, 50
                        else:
                            require ('cd', 68)[0] == address(('cd', 68)[0])
                            mem[(2 * ceil32(return_data.size)) + 548] = this.address
                            mem[(2 * ceil32(return_data.size)) + 580] = address(cd[4])
                            require ext_code.size(address(('cd', 68)[0]))
                            staticcall address(('cd', 68)[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(cd[4])
                            mem[(2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 1:
                                    mem[(4 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 548] = cd[100]
                                    mem[(4 * ceil32(return_data.size)) + 580] = 64
                                    mem[(4 * ceil32(return_data.size)) + 612] = ('cd', 36).length
                                    idx = 0
                                    s = cd[36] + 36
                                    t = (4 * ceil32(return_data.size)) + 644
                                    while idx < ('cd', 36).length:
                                        require cd[s] == address(cd[s])
                                        mem[t] = address(cd[s])
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(cd[4]))
                                    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args cd[100], Array(len=('cd', 36).length, data=mem[(4 * ceil32(return_data.size)) + 644 len 32 * ('cd', 36).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[(4 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + 544
                                        require return_data.size >= 32
                                        _271 = mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32
                                        require mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 575 < (4 * ceil32(return_data.size)) + return_data.size + 544
                                        _275 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544]
                                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544] > test266151307():
                                            revert with 0, 65
                                        else:
                                            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544]) + 545 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544]) + 1 < 0:
                                                revert with 0, 65
                                            else:
                                                mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544]) + 545
                                                mem[(6 * ceil32(return_data.size)) + 544] = _275
                                                require return_data.size >= _271 + (32 * _275) + 32
                                                mem[(6 * ceil32(return_data.size)) + 576 len 32 * _275] = mem[(4 * ceil32(return_data.size)) + _271 + 576 len 32 * _275]
                                                if ('cd', 36).length < 1:
                                                    revert with 0, 17
                                                else:
                                                    if ('cd', 36).length - 1 >= _275:
                                                        revert with 0, 50
                                                    else:
                                                        mem[384] = mem[(32 * ('cd', 36).length - 1) + (6 * ceil32(return_data.size)) + 576]
                                                        if ('cd', 36).length < 1:
                                                            revert with 0, 17
                                                        else:
                                                            if ('cd', 36).length - 1 >= ('cd', 36).length:
                                                                revert with 0, 50
                                                            else:
                                                                require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                                                mem[mem[64] + 4] = this.address
                                                                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                                                                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _651 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _655 = mem[_651]
                                                                    mem[mem[64] + 36] = 128
                                                                    mem[mem[64] + 132] = ('cd', 36).length
                                                                    idx = 0
                                                                    s = cd[36] + 36
                                                                    t = mem[64] + 164
                                                                    while idx < ('cd', 36).length:
                                                                        require cd[s] == address(cd[s])
                                                                        mem[t] = address(cd[s])
                                                                        idx = idx + 1
                                                                        s = s + 32
                                                                        t = t + 32
                                                                        continue 
                                                                    mem[mem[64] + 68] = this.address
                                                                    mem[mem[64] + 100] = block.timestamp + 60
                                                                    require ext_code.size(address(cd[4]))
                                                                    call address(cd[4]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                                       value cd[100] wei
                                                                         gas gas_remaining wei
                                                                        args 0, 128, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[mem[64] + 164 len 32 * ('cd', 36).length]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if gas_remaining < gas_remaining:
                                                                            revert with 0, 17
                                                                        else:
                                                                            mem[320] = 0
                                                                            if ('cd', 36).length < 1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                if ('cd', 36).length - 1 >= ('cd', 36).length:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                                                                    mem[mem[64] + 4] = this.address
                                                                                    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                                                                                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args this.address
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _991 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        if mem[_991] < _655:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            mem[416] = mem[_991] - _655
                                                                                            if ('cd', 68).length < 1:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                    revert with 0, 50
                                                                                                else:
                                                                                                    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                    if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                                                                                                        _999 = mem[416]
                                                                                                        _1000 = mem[64]
                                                                                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                        mem[mem[64] + 4] = _999
                                                                                                        mem[mem[64] + 36] = 64
                                                                                                        mem[mem[64] + 68] = ('cd', 68).length
                                                                                                        idx = 0
                                                                                                        s = cd[68] + 36
                                                                                                        t = mem[64] + 100
                                                                                                        while idx < ('cd', 68).length:
                                                                                                            require cd[s] == address(cd[s])
                                                                                                            mem[t] = address(cd[s])
                                                                                                            idx = idx + 1
                                                                                                            s = s + 32
                                                                                                            t = t + 32
                                                                                                            continue 
                                                                                                        require ext_code.size(address(cd[4]))
                                                                                                        staticcall address(cd[4]).mem[mem[64] len 4] with:
                                                                                                                gas gas_remaining wei
                                                                                                               args mem[mem[64] + 4 len _1000 + (32 * ('cd', 68).length) + -mem[64] + 96]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _1303 = mem[64]
                                                                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            _1311 = mem[_1303]
                                                                                                            require mem[_1303] <= test266151307()
                                                                                                            require _1303 + mem[_1303] + 31 < _1303 + return_data.size
                                                                                                            _1319 = mem[_1303 + mem[_1303]]
                                                                                                            if mem[_1303 + mem[_1303]] > test266151307():
                                                                                                                revert with 0, 65
                                                                                                            else:
                                                                                                                if _1303 + ceil32(return_data.size) + ceil32(32 * mem[_1303 + mem[_1303]]) + 1 > test266151307() or ceil32(32 * mem[_1303 + mem[_1303]]) + 1 < 0:
                                                                                                                    revert with 0, 65
                                                                                                                else:
                                                                                                                    mem[64] = _1303 + ceil32(return_data.size) + ceil32(32 * mem[_1303 + mem[_1303]]) + 1
                                                                                                                    mem[_1303 + ceil32(return_data.size)] = _1319
                                                                                                                    require return_data.size >= _1311 + (32 * _1319) + 32
                                                                                                                    mem[_1303 + ceil32(return_data.size) + 32 len 32 * _1319] = mem[_1303 + _1311 + 32 len 32 * _1319]
                                                                                                                    if ('cd', 68).length < 1:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if ('cd', 68).length - 1 >= _1319:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            mem[448] = mem[(32 * ('cd', 68).length - 1) + _1303 + ceil32(return_data.size) + 32]
                                                                                                                            _1576 = mem[416]
                                                                                                                            _1577 = mem[64]
                                                                                                                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                                                                                            mem[mem[64] + 4] = _1576
                                                                                                                            mem[mem[64] + 36] = 0
                                                                                                                            mem[mem[64] + 68] = 160
                                                                                                                            mem[mem[64] + 164] = ('cd', 68).length
                                                                                                                            idx = 0
                                                                                                                            s = cd[68] + 36
                                                                                                                            t = mem[64] + 196
                                                                                                                            while idx < ('cd', 68).length:
                                                                                                                                require cd[s] == address(cd[s])
                                                                                                                                mem[t] = address(cd[s])
                                                                                                                                idx = idx + 1
                                                                                                                                s = s + 32
                                                                                                                                t = t + 32
                                                                                                                                continue 
                                                                                                                            mem[_1577 + 100] = this.address
                                                                                                                            mem[_1577 + 132] = block.timestamp + 60
                                                                                                                            require ext_code.size(address(cd[4]))
                                                                                                                            call address(cd[4]).mem[mem[64] len 4] with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args mem[mem[64] + 4 len _1577 + (32 * ('cd', 68).length) + -mem[64] + 192]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                if gas_remaining < gas_remaining:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    mem[352] = 0
                                                                                                                                    if ('cd', 68).length < 1:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                                                            if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                                                                                                                                                if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    mem[480] = 0
                                                                                                                                                    mem[mem[64]] = mem[320]
                                                                                                                                                    mem[mem[64] + 32] = 0
                                                                                                                                                    mem[mem[64] + 64] = mem[384]
                                                                                                                                                    mem[mem[64] + 96] = mem[416]
                                                                                                                                                    mem[mem[64] + 128] = mem[448]
                                                                                                                                                    mem[mem[64] + 160] = 0
                                                                                                                                                    mem[mem[64] + 192] = mem[512]
                                                                                                                                                    return mem[mem[64]], 0, mem[mem[64] + 64 len 96], 0, mem[mem[64] + 192]
                                                                                                                                            else:
                                                                                                                                                if ('cd', 68).length < 1:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                                                                        revert with 0, 50
                                                                                                                                                    else:
                                                                                                                                                        require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                                                                        require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                                                                                                                                                        staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                               args this.address
                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            _1879 = mem[64]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            if mem[_1879] < eth.balance(this.address):
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                mem[480] = mem[_1879] - eth.balance(this.address)
                                                                                                                                                                mem[mem[64]] = mem[320]
                                                                                                                                                                mem[mem[64] + 32] = 0
                                                                                                                                                                mem[mem[64] + 64] = mem[384]
                                                                                                                                                                mem[mem[64] + 96] = mem[416]
                                                                                                                                                                mem[mem[64] + 128] = mem[448]
                                                                                                                                                                mem[mem[64] + 160] = mem[480]
                                                                                                                                                                mem[mem[64] + 192] = mem[512]
                                                                                                                                                                return mem[mem[64]], 0, mem[mem[64] + 64 len 160]
                                                                                                    else:
                                                                                                        if ('cd', 68).length < 1:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                                revert with 0, 50
                                                                                                            else:
                                                                                                                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                                mem[mem[64] + 4] = this.address
                                                                                                                require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                                                                                                                staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args this.address
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _1027 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    _1036 = mem[_1027]
                                                                                                                    _1043 = mem[416]
                                                                                                                    _1044 = mem[64]
                                                                                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                    mem[mem[64] + 4] = _1043
                                                                                                                    mem[mem[64] + 36] = 64
                                                                                                                    mem[mem[64] + 68] = ('cd', 68).length
                                                                                                                    idx = 0
                                                                                                                    s = cd[68] + 36
                                                                                                                    t = mem[64] + 100
                                                                                                                    while idx < ('cd', 68).length:
                                                                                                                        require cd[s] == address(cd[s])
                                                                                                                        mem[t] = address(cd[s])
                                                                                                                        idx = idx + 1
                                                                                                                        s = s + 32
                                                                                                                        t = t + 32
                                                                                                                        continue 
                                                                                                                    require ext_code.size(address(cd[4]))
                                                                                                                    staticcall address(cd[4]).mem[mem[64] len 4] with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args mem[mem[64] + 4 len _1044 + (32 * ('cd', 68).length) + -mem[64] + 96]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _1304 = mem[64]
                                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _1312 = mem[_1304]
                                                                                                                        require mem[_1304] <= test266151307()
                                                                                                                        require _1304 + mem[_1304] + 31 < _1304 + return_data.size
                                                                                                                        _1320 = mem[_1304 + mem[_1304]]
                                                                                                                        if mem[_1304 + mem[_1304]] > test266151307():
                                                                                                                            revert with 0, 65
                                                                                                                        else:
                                                                                                                            if _1304 + ceil32(return_data.size) + ceil32(32 * mem[_1304 + mem[_1304]]) + 1 > test266151307() or ceil32(32 * mem[_1304 + mem[_1304]]) + 1 < 0:
                                                                                                                                revert with 0, 65
                                                                                                                            else:
                                                                                                                                mem[64] = _1304 + ceil32(return_data.size) + ceil32(32 * mem[_1304 + mem[_1304]]) + 1
                                                                                                                                mem[_1304 + ceil32(return_data.size)] = _1320
                                                                                                                                require return_data.size >= _1312 + (32 * _1320) + 32
                                                                                                                                mem[_1304 + ceil32(return_data.size) + 32 len 32 * _1320] = mem[_1304 + _1312 + 32 len 32 * _1320]
                                                                                                                                if ('cd', 68).length < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if ('cd', 68).length - 1 >= _1320:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        mem[448] = mem[(32 * ('cd', 68).length - 1) + _1304 + ceil32(return_data.size) + 32]
                                                                                                                                        _1579 = mem[416]
                                                                                                                                        _1580 = mem[64]
                                                                                                                                        mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                                                                                                        mem[mem[64] + 4] = _1579
                                                                                                                                        mem[mem[64] + 36] = 0
                                                                                                                                        mem[mem[64] + 68] = 160
                                                                                                                                        mem[mem[64] + 164] = ('cd', 68).length
                                                                                                                                        idx = 0
                                                                                                                                        s = cd[68] + 36
                                                                                                                                        t = mem[64] + 196
                                                                                                                                        while idx < ('cd', 68).length:
                                                                                                                                            require cd[s] == address(cd[s])
                                                                                                                                            mem[t] = address(cd[s])
                                                                                                                                            idx = idx + 1
                                                                                                                                            s = s + 32
                                                                                                                                            t = t + 32
                                                                                                                                            continue 
                                                                                                                                        mem[_1580 + 100] = this.address
                                                                                                                                        mem[_1580 + 132] = block.timestamp + 60
                                                                                                                                        require ext_code.size(address(cd[4]))
                                                                                                                                        call address(cd[4]).mem[mem[64] len 4] with:
                                                                                                                                             gas gas_remaining wei
                                                                                                                                            args mem[mem[64] + 4 len _1580 + (32 * ('cd', 68).length) + -mem[64] + 192]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            if gas_remaining < gas_remaining:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                mem[352] = 0
                                                                                                                                                if ('cd', 68).length < 1:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                                                                        revert with 0, 50
                                                                                                                                                    else:
                                                                                                                                                        require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                                                                        if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                                                                                                                                                            if eth.balance(this.address) < _1036:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                mem[480] = eth.balance(this.address) - _1036
                                                                                                                                                                mem[mem[64]] = mem[320]
                                                                                                                                                                mem[mem[64] + 32] = 0
                                                                                                                                                                mem[mem[64] + 64] = mem[384]
                                                                                                                                                                mem[mem[64] + 96] = mem[416]
                                                                                                                                                                mem[mem[64] + 128] = mem[448]
                                                                                                                                                                mem[mem[64] + 160] = eth.balance(this.address) - _1036
                                                                                                                                                                mem[mem[64] + 192] = mem[512]
                                                                                                                                                                return mem[mem[64]], 0, mem[mem[64] + 64 len 96], eth.balance(this.address) - _1036, mem[mem[64] + 192]
                                                                                                                                                        else:
                                                                                                                                                            if ('cd', 68).length < 1:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                else:
                                                                                                                                                                    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                                                                                    require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                                                                                                                                                                    staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                                           args this.address
                                                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        _1880 = mem[64]
                                                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                        if mem[_1880] < _1036:
                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                        else:
                                                                                                                                                                            mem[480] = mem[_1880] - _1036
                                                                                                                                                                            mem[mem[64]] = mem[320]
                                                                                                                                                                            mem[mem[64] + 32] = 0
                                                                                                                                                                            mem[mem[64] + 64] = mem[384]
                                                                                                                                                                            mem[mem[64] + 96] = mem[416]
                                                                                                                                                                            mem[mem[64] + 128] = mem[448]
                                                                                                                                                                            mem[mem[64] + 160] = mem[480]
                                                                                                                                                                            mem[mem[64] + 192] = mem[512]
                                                                                                                                                                            return mem[mem[64]], 0, mem[mem[64] + 64 len 160]
                                else:
                                    mem[(4 * ceil32(return_data.size)) + 548] = address(cd[4])
                                    mem[(4 * ceil32(return_data.size)) + 580] = -101
                                    require ext_code.size(address(('cd', 68)[0]))
                                    call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[4]), -101
                                    mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'FAIL TO APPROVE'
                                        else:
                                            mem[(6 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(6 * ceil32(return_data.size)) + 548] = cd[100]
                                            mem[(6 * ceil32(return_data.size)) + 580] = 64
                                            mem[(6 * ceil32(return_data.size)) + 612] = ('cd', 36).length
                                            idx = 0
                                            s = cd[36] + 36
                                            t = (6 * ceil32(return_data.size)) + 644
                                            while idx < ('cd', 36).length:
                                                require cd[s] == address(cd[s])
                                                mem[t] = address(cd[s])
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(address(cd[4]))
                                            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args cd[100], Array(len=('cd', 36).length, data=mem[(6 * ceil32(return_data.size)) + 644 len 32 * ('cd', 36).length])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                mem[(6 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = (7 * ceil32(return_data.size)) + 544
                                                require return_data.size >= 32
                                                _272 = mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32
                                                require mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                                                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 575 < (6 * ceil32(return_data.size)) + return_data.size + 544
                                                _276 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544]
                                                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544] > test266151307():
                                                    revert with 0, 65
                                                else:
                                                    if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544]) + 545 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544]) + 1 < 0:
                                                        revert with 0, 65
                                                    else:
                                                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544]) + 545
                                                        mem[(7 * ceil32(return_data.size)) + 544] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544]
                                                        require return_data.size >= _272 + (32 * _276) + 32
                                                        mem[(7 * ceil32(return_data.size)) + 576 len 32 * _276] = mem[(6 * ceil32(return_data.size)) + _272 + 576 len 32 * _276]
                                                        if ('cd', 36).length < 1:
                                                            revert with 0, 17
                                                        else:
                                                            if ('cd', 36).length - 1 >= _276:
                                                                revert with 0, 50
                                                            else:
                                                                mem[384] = mem[(32 * ('cd', 36).length - 1) + (7 * ceil32(return_data.size)) + 576]
                                                                if ('cd', 36).length < 1:
                                                                    revert with 0, 17
                                                                else:
                                                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                                                        revert with 0, 50
                                                                    else:
                                                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                                                        mem[mem[64] + 4] = this.address
                                                                        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                                                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _652 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _656 = mem[_652]
                                                                            mem[mem[64] + 36] = 128
                                                                            mem[mem[64] + 132] = ('cd', 36).length
                                                                            idx = 0
                                                                            s = cd[36] + 36
                                                                            t = mem[64] + 164
                                                                            while idx < ('cd', 36).length:
                                                                                require cd[s] == address(cd[s])
                                                                                mem[t] = address(cd[s])
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            mem[mem[64] + 68] = this.address
                                                                            mem[mem[64] + 100] = block.timestamp + 60
                                                                            require ext_code.size(address(cd[4]))
                                                                            call address(cd[4]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                                               value cd[100] wei
                                                                                 gas gas_remaining wei
                                                                                args 0, 128, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[mem[64] + 164 len 32 * ('cd', 36).length]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                if gas_remaining < gas_remaining:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    mem[320] = 0
                                                                                    if ('cd', 36).length < 1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                                                                            revert with 0, 50
                                                                                        else:
                                                                                            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                                                                            mem[mem[64] + 4] = this.address
                                                                                            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                                                                                            staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args this.address
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _992 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                if mem[_992] < _656:
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    mem[416] = mem[_992] - _656
                                                                                                    if ('cd', 68).length < 1:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                            revert with 0, 50
                                                                                                        else:
                                                                                                            require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                            if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                                                                                                                _1001 = mem[416]
                                                                                                                _1002 = mem[64]
                                                                                                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                mem[mem[64] + 4] = _1001
                                                                                                                mem[mem[64] + 36] = 64
                                                                                                                mem[mem[64] + 68] = ('cd', 68).length
                                                                                                                idx = 0
                                                                                                                s = cd[68] + 36
                                                                                                                t = mem[64] + 100
                                                                                                                while idx < ('cd', 68).length:
                                                                                                                    require cd[s] == address(cd[s])
                                                                                                                    mem[t] = address(cd[s])
                                                                                                                    idx = idx + 1
                                                                                                                    s = s + 32
                                                                                                                    t = t + 32
                                                                                                                    continue 
                                                                                                                require ext_code.size(address(cd[4]))
                                                                                                                staticcall address(cd[4]).mem[mem[64] len 4] with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args mem[mem[64] + 4 len _1002 + (32 * ('cd', 68).length) + -mem[64] + 96]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _1305 = mem[64]
                                                                                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    _1313 = mem[_1305]
                                                                                                                    require mem[_1305] <= test266151307()
                                                                                                                    require _1305 + mem[_1305] + 31 < _1305 + return_data.size
                                                                                                                    _1321 = mem[_1305 + mem[_1305]]
                                                                                                                    if mem[_1305 + mem[_1305]] > test266151307():
                                                                                                                        revert with 0, 65
                                                                                                                    else:
                                                                                                                        if _1305 + ceil32(return_data.size) + ceil32(32 * mem[_1305 + mem[_1305]]) + 1 > test266151307() or ceil32(32 * mem[_1305 + mem[_1305]]) + 1 < 0:
                                                                                                                            revert with 0, 65
                                                                                                                        else:
                                                                                                                            mem[64] = _1305 + ceil32(return_data.size) + ceil32(32 * mem[_1305 + mem[_1305]]) + 1
                                                                                                                            mem[_1305 + ceil32(return_data.size)] = _1321
                                                                                                                            require return_data.size >= _1313 + (32 * _1321) + 32
                                                                                                                            mem[_1305 + ceil32(return_data.size) + 32 len 32 * _1321] = mem[_1305 + _1313 + 32 len 32 * _1321]
                                                                                                                            if ('cd', 68).length < 1:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if ('cd', 68).length - 1 >= _1321:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    mem[448] = mem[(32 * ('cd', 68).length - 1) + _1305 + ceil32(return_data.size) + 32]
                                                                                                                                    _1582 = mem[416]
                                                                                                                                    _1583 = mem[64]
                                                                                                                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                                                                                                    mem[mem[64] + 4] = _1582
                                                                                                                                    mem[mem[64] + 36] = 0
                                                                                                                                    mem[mem[64] + 68] = 160
                                                                                                                                    mem[mem[64] + 164] = ('cd', 68).length
                                                                                                                                    idx = 0
                                                                                                                                    s = cd[68] + 36
                                                                                                                                    t = mem[64] + 196
                                                                                                                                    while idx < ('cd', 68).length:
                                                                                                                                        require cd[s] == address(cd[s])
                                                                                                                                        mem[t] = address(cd[s])
                                                                                                                                        idx = idx + 1
                                                                                                                                        s = s + 32
                                                                                                                                        t = t + 32
                                                                                                                                        continue 
                                                                                                                                    mem[_1583 + 100] = this.address
                                                                                                                                    mem[_1583 + 132] = block.timestamp + 60
                                                                                                                                    require ext_code.size(address(cd[4]))
                                                                                                                                    call address(cd[4]).mem[mem[64] len 4] with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args mem[mem[64] + 4 len _1583 + (32 * ('cd', 68).length) + -mem[64] + 192]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        if gas_remaining < gas_remaining:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            mem[352] = 0
                                                                                                                                            if ('cd', 68).length < 1:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                                                                    if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                                                                                                                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            mem[480] = 0
                                                                                                                                                            mem[mem[64]] = mem[320]
                                                                                                                                                            mem[mem[64] + 32] = 0
                                                                                                                                                            mem[mem[64] + 64] = mem[384]
                                                                                                                                                            mem[mem[64] + 96] = mem[416]
                                                                                                                                                            mem[mem[64] + 128] = mem[448]
                                                                                                                                                            mem[mem[64] + 160] = 0
                                                                                                                                                            mem[mem[64] + 192] = mem[512]
                                                                                                                                                            return mem[mem[64]], 0, mem[mem[64] + 64 len 96], 0, mem[mem[64] + 192]
                                                                                                                                                    else:
                                                                                                                                                        if ('cd', 68).length < 1:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                                                                                revert with 0, 50
                                                                                                                                                            else:
                                                                                                                                                                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                                                                                mem[mem[64] + 4] = this.address
                                                                                                                                                                require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                                                                                                                                                                staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                                       args this.address
                                                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                else:
                                                                                                                                                                    _1881 = mem[64]
                                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                                    if mem[_1881] < eth.balance(this.address):
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        mem[480] = mem[_1881] - eth.balance(this.address)
                                                                                                                                                                        mem[mem[64]] = mem[320]
                                                                                                                                                                        mem[mem[64] + 32] = 0
                                                                                                                                                                        mem[mem[64] + 64] = mem[384]
                                                                                                                                                                        mem[mem[64] + 96] = mem[416]
                                                                                                                                                                        mem[mem[64] + 128] = mem[448]
                                                                                                                                                                        mem[mem[64] + 160] = mem[480]
                                                                                                                                                                        mem[mem[64] + 192] = mem[512]
                                                                                                                                                                        return mem[mem[64]], 0, mem[mem[64] + 64 len 160]
                                                                                                            else:
                                                                                                                if ('cd', 68).length < 1:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                                        revert with 0, 50
                                                                                                                    else:
                                                                                                                        require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                                        require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                                                                                                                        staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args this.address
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _1028 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            _1038 = mem[_1028]
                                                                                                                            _1045 = mem[416]
                                                                                                                            _1046 = mem[64]
                                                                                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                            mem[mem[64] + 4] = _1045
                                                                                                                            mem[mem[64] + 36] = 64
                                                                                                                            mem[mem[64] + 68] = ('cd', 68).length
                                                                                                                            idx = 0
                                                                                                                            s = cd[68] + 36
                                                                                                                            t = mem[64] + 100
                                                                                                                            while idx < ('cd', 68).length:
                                                                                                                                require cd[s] == address(cd[s])
                                                                                                                                mem[t] = address(cd[s])
                                                                                                                                idx = idx + 1
                                                                                                                                s = s + 32
                                                                                                                                t = t + 32
                                                                                                                                continue 
                                                                                                                            require ext_code.size(address(cd[4]))
                                                                                                                            staticcall address(cd[4]).mem[mem[64] len 4] with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args mem[mem[64] + 4 len _1046 + (32 * ('cd', 68).length) + -mem[64] + 96]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _1306 = mem[64]
                                                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _1314 = mem[_1306]
                                                                                                                                require mem[_1306] <= test266151307()
                                                                                                                                require _1306 + mem[_1306] + 31 < _1306 + return_data.size
                                                                                                                                _1322 = mem[_1306 + mem[_1306]]
                                                                                                                                if mem[_1306 + mem[_1306]] > test266151307():
                                                                                                                                    revert with 0, 65
                                                                                                                                else:
                                                                                                                                    if _1306 + ceil32(return_data.size) + ceil32(32 * mem[_1306 + mem[_1306]]) + 1 > test266151307() or ceil32(32 * mem[_1306 + mem[_1306]]) + 1 < 0:
                                                                                                                                        revert with 0, 65
                                                                                                                                    else:
                                                                                                                                        mem[64] = _1306 + ceil32(return_data.size) + ceil32(32 * mem[_1306 + mem[_1306]]) + 1
                                                                                                                                        mem[_1306 + ceil32(return_data.size)] = _1322
                                                                                                                                        require return_data.size >= _1314 + (32 * _1322) + 32
                                                                                                                                        mem[_1306 + ceil32(return_data.size) + 32 len 32 * _1322] = mem[_1306 + _1314 + 32 len 32 * _1322]
                                                                                                                                        if ('cd', 68).length < 1:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            if ('cd', 68).length - 1 >= _1322:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                mem[448] = mem[(32 * ('cd', 68).length - 1) + _1306 + ceil32(return_data.size) + 32]
                                                                                                                                                _1585 = mem[416]
                                                                                                                                                _1586 = mem[64]
                                                                                                                                                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                                                                                                                mem[mem[64] + 4] = _1585
                                                                                                                                                mem[mem[64] + 36] = 0
                                                                                                                                                mem[mem[64] + 68] = 160
                                                                                                                                                mem[mem[64] + 164] = ('cd', 68).length
                                                                                                                                                idx = 0
                                                                                                                                                s = cd[68] + 36
                                                                                                                                                t = mem[64] + 196
                                                                                                                                                while idx < ('cd', 68).length:
                                                                                                                                                    require cd[s] == address(cd[s])
                                                                                                                                                    mem[t] = address(cd[s])
                                                                                                                                                    idx = idx + 1
                                                                                                                                                    s = s + 32
                                                                                                                                                    t = t + 32
                                                                                                                                                    continue 
                                                                                                                                                mem[_1586 + 100] = this.address
                                                                                                                                                mem[_1586 + 132] = block.timestamp + 60
                                                                                                                                                require ext_code.size(address(cd[4]))
                                                                                                                                                call address(cd[4]).mem[mem[64] len 4] with:
                                                                                                                                                     gas gas_remaining wei
                                                                                                                                                    args mem[mem[64] + 4 len _1586 + (32 * ('cd', 68).length) + -mem[64] + 192]
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    if gas_remaining < gas_remaining:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        mem[352] = 0
                                                                                                                                                        if ('cd', 68).length < 1:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                                                                                revert with 0, 50
                                                                                                                                                            else:
                                                                                                                                                                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                                                                                if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                                                                                                                                                                    if eth.balance(this.address) < _1038:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        mem[480] = eth.balance(this.address) - _1038
                                                                                                                                                                        mem[mem[64]] = mem[320]
                                                                                                                                                                        mem[mem[64] + 32] = 0
                                                                                                                                                                        mem[mem[64] + 64] = mem[384]
                                                                                                                                                                        mem[mem[64] + 96] = mem[416]
                                                                                                                                                                        mem[mem[64] + 128] = mem[448]
                                                                                                                                                                        mem[mem[64] + 160] = eth.balance(this.address) - _1038
                                                                                                                                                                        mem[mem[64] + 192] = mem[512]
                                                                                                                                                                        return mem[mem[64]], 0, mem[mem[64] + 64 len 96], eth.balance(this.address) - _1038, mem[mem[64] + 192]
                                                                                                                                                                else:
                                                                                                                                                                    if ('cd', 68).length < 1:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                        else:
                                                                                                                                                                            require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                                                                                            mem[mem[64] + 4] = this.address
                                                                                                                                                                            require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                                                                                                                                                                            staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                                   args this.address
                                                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                            else:
                                                                                                                                                                                _1882 = mem[64]
                                                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                if mem[_1882] < _1038:
                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                else:
                                                                                                                                                                                    mem[480] = mem[_1882] - _1038
                                                                                                                                                                                    mem[mem[64]] = mem[320]
                                                                                                                                                                                    mem[mem[64] + 32] = 0
                                                                                                                                                                                    mem[mem[64] + 64] = mem[384]
                                                                                                                                                                                    mem[mem[64] + 96] = mem[416]
                                                                                                                                                                                    mem[mem[64] + 128] = mem[448]
                                                                                                                                                                                    mem[mem[64] + 160] = mem[480]
                                                                                                                                                                                    mem[mem[64] + 192] = mem[512]
                                                                                                                                                                                    return mem[mem[64]], 0, mem[mem[64] + 64 len 160]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 548] = address(cd[4])
                        mem[(2 * ceil32(return_data.size)) + 580] = -101
                        require ext_code.size(address(('cd', 36)[0]))
                        call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[4]), -101
                        mem[(2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'FAIL TO APPROVE'
                            else:
                                if 0 >= ('cd', 68).length:
                                    revert with 0, 50
                                else:
                                    require ('cd', 68)[0] == address(('cd', 68)[0])
                                    mem[(4 * ceil32(return_data.size)) + 548] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 580] = address(cd[4])
                                    require ext_code.size(address(('cd', 68)[0]))
                                    staticcall address(('cd', 68)[0]).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(cd[4])
                                    mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] >= 1:
                                            mem[(6 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(6 * ceil32(return_data.size)) + 548] = cd[100]
                                            mem[(6 * ceil32(return_data.size)) + 580] = 64
                                            mem[(6 * ceil32(return_data.size)) + 612] = ('cd', 36).length
                                            idx = 0
                                            s = cd[36] + 36
                                            t = (6 * ceil32(return_data.size)) + 644
                                            while idx < ('cd', 36).length:
                                                require cd[s] == address(cd[s])
                                                mem[t] = address(cd[s])
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(address(cd[4]))
                                            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args cd[100], Array(len=('cd', 36).length, data=mem[(6 * ceil32(return_data.size)) + 644 len 32 * ('cd', 36).length])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                mem[(6 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = (7 * ceil32(return_data.size)) + 544
                                                require return_data.size >= 32
                                                _273 = mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32
                                                require mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                                                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 575 < (6 * ceil32(return_data.size)) + return_data.size + 544
                                                _277 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544]
                                                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544] > test266151307():
                                                    revert with 0, 65
                                                else:
                                                    if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544]) + 545 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544]) + 1 < 0:
                                                        revert with 0, 65
                                                    else:
                                                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544]) + 545
                                                        mem[(7 * ceil32(return_data.size)) + 544] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544]
                                                        require return_data.size >= _273 + (32 * _277) + 32
                                                        mem[(7 * ceil32(return_data.size)) + 576 len 32 * _277] = mem[(6 * ceil32(return_data.size)) + _273 + 576 len 32 * _277]
                                                        if ('cd', 36).length < 1:
                                                            revert with 0, 17
                                                        else:
                                                            if ('cd', 36).length - 1 >= _277:
                                                                revert with 0, 50
                                                            else:
                                                                mem[384] = mem[(32 * ('cd', 36).length - 1) + (7 * ceil32(return_data.size)) + 576]
                                                                if ('cd', 36).length < 1:
                                                                    revert with 0, 17
                                                                else:
                                                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                                                        revert with 0, 50
                                                                    else:
                                                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                                                        mem[mem[64] + 4] = this.address
                                                                        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                                                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _653 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _657 = mem[_653]
                                                                            mem[mem[64] + 36] = 128
                                                                            mem[mem[64] + 132] = ('cd', 36).length
                                                                            idx = 0
                                                                            s = cd[36] + 36
                                                                            t = mem[64] + 164
                                                                            while idx < ('cd', 36).length:
                                                                                require cd[s] == address(cd[s])
                                                                                mem[t] = address(cd[s])
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            mem[mem[64] + 68] = this.address
                                                                            mem[mem[64] + 100] = block.timestamp + 60
                                                                            require ext_code.size(address(cd[4]))
                                                                            call address(cd[4]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                                               value cd[100] wei
                                                                                 gas gas_remaining wei
                                                                                args 0, 128, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[mem[64] + 164 len 32 * ('cd', 36).length]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                if gas_remaining < gas_remaining:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    mem[320] = 0
                                                                                    if ('cd', 36).length < 1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                                                                            revert with 0, 50
                                                                                        else:
                                                                                            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                                                                            mem[mem[64] + 4] = this.address
                                                                                            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                                                                                            staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args this.address
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _993 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                if mem[_993] < _657:
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    mem[416] = mem[_993] - _657
                                                                                                    if ('cd', 68).length < 1:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                            revert with 0, 50
                                                                                                        else:
                                                                                                            require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                            if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                                                                                                                _1003 = mem[416]
                                                                                                                _1004 = mem[64]
                                                                                                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                mem[mem[64] + 4] = _1003
                                                                                                                mem[mem[64] + 36] = 64
                                                                                                                mem[mem[64] + 68] = ('cd', 68).length
                                                                                                                idx = 0
                                                                                                                s = cd[68] + 36
                                                                                                                t = mem[64] + 100
                                                                                                                while idx < ('cd', 68).length:
                                                                                                                    require cd[s] == address(cd[s])
                                                                                                                    mem[t] = address(cd[s])
                                                                                                                    idx = idx + 1
                                                                                                                    s = s + 32
                                                                                                                    t = t + 32
                                                                                                                    continue 
                                                                                                                require ext_code.size(address(cd[4]))
                                                                                                                staticcall address(cd[4]).mem[mem[64] len 4] with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args mem[mem[64] + 4 len _1004 + (32 * ('cd', 68).length) + -mem[64] + 96]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _1307 = mem[64]
                                                                                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    _1315 = mem[_1307]
                                                                                                                    require mem[_1307] <= test266151307()
                                                                                                                    require _1307 + mem[_1307] + 31 < _1307 + return_data.size
                                                                                                                    _1323 = mem[_1307 + mem[_1307]]
                                                                                                                    if mem[_1307 + mem[_1307]] > test266151307():
                                                                                                                        revert with 0, 65
                                                                                                                    else:
                                                                                                                        if _1307 + ceil32(return_data.size) + ceil32(32 * mem[_1307 + mem[_1307]]) + 1 > test266151307() or ceil32(32 * mem[_1307 + mem[_1307]]) + 1 < 0:
                                                                                                                            revert with 0, 65
                                                                                                                        else:
                                                                                                                            mem[64] = _1307 + ceil32(return_data.size) + ceil32(32 * mem[_1307 + mem[_1307]]) + 1
                                                                                                                            mem[_1307 + ceil32(return_data.size)] = _1323
                                                                                                                            require return_data.size >= _1315 + (32 * _1323) + 32
                                                                                                                            mem[_1307 + ceil32(return_data.size) + 32 len 32 * _1323] = mem[_1307 + _1315 + 32 len 32 * _1323]
                                                                                                                            if ('cd', 68).length < 1:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if ('cd', 68).length - 1 >= _1323:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    mem[448] = mem[(32 * ('cd', 68).length - 1) + _1307 + ceil32(return_data.size) + 32]
                                                                                                                                    _1588 = mem[416]
                                                                                                                                    _1589 = mem[64]
                                                                                                                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                                                                                                    mem[mem[64] + 4] = _1588
                                                                                                                                    mem[mem[64] + 36] = 0
                                                                                                                                    mem[mem[64] + 68] = 160
                                                                                                                                    mem[mem[64] + 164] = ('cd', 68).length
                                                                                                                                    idx = 0
                                                                                                                                    s = cd[68] + 36
                                                                                                                                    t = mem[64] + 196
                                                                                                                                    while idx < ('cd', 68).length:
                                                                                                                                        require cd[s] == address(cd[s])
                                                                                                                                        mem[t] = address(cd[s])
                                                                                                                                        idx = idx + 1
                                                                                                                                        s = s + 32
                                                                                                                                        t = t + 32
                                                                                                                                        continue 
                                                                                                                                    mem[_1589 + 100] = this.address
                                                                                                                                    mem[_1589 + 132] = block.timestamp + 60
                                                                                                                                    require ext_code.size(address(cd[4]))
                                                                                                                                    call address(cd[4]).mem[mem[64] len 4] with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args mem[mem[64] + 4 len _1589 + (32 * ('cd', 68).length) + -mem[64] + 192]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        if gas_remaining < gas_remaining:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            mem[352] = 0
                                                                                                                                            if ('cd', 68).length < 1:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                                                                    if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                                                                                                                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            mem[480] = 0
                                                                                                                                                            mem[mem[64]] = mem[320]
                                                                                                                                                            mem[mem[64] + 32] = 0
                                                                                                                                                            mem[mem[64] + 64] = mem[384]
                                                                                                                                                            mem[mem[64] + 96] = mem[416]
                                                                                                                                                            mem[mem[64] + 128] = mem[448]
                                                                                                                                                            mem[mem[64] + 160] = 0
                                                                                                                                                            mem[mem[64] + 192] = mem[512]
                                                                                                                                                            return mem[mem[64]], 0, mem[mem[64] + 64 len 96], 0, mem[mem[64] + 192]
                                                                                                                                                    else:
                                                                                                                                                        if ('cd', 68).length < 1:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                                                                                revert with 0, 50
                                                                                                                                                            else:
                                                                                                                                                                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                                                                                mem[mem[64] + 4] = this.address
                                                                                                                                                                require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                                                                                                                                                                staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                                       args this.address
                                                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                else:
                                                                                                                                                                    _1883 = mem[64]
                                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                                    if mem[_1883] < eth.balance(this.address):
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        mem[480] = mem[_1883] - eth.balance(this.address)
                                                                                                                                                                        mem[mem[64]] = mem[320]
                                                                                                                                                                        mem[mem[64] + 32] = 0
                                                                                                                                                                        mem[mem[64] + 64] = mem[384]
                                                                                                                                                                        mem[mem[64] + 96] = mem[416]
                                                                                                                                                                        mem[mem[64] + 128] = mem[448]
                                                                                                                                                                        mem[mem[64] + 160] = mem[480]
                                                                                                                                                                        mem[mem[64] + 192] = mem[512]
                                                                                                                                                                        return mem[mem[64]], 0, mem[mem[64] + 64 len 160]
                                                                                                            else:
                                                                                                                if ('cd', 68).length < 1:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                                        revert with 0, 50
                                                                                                                    else:
                                                                                                                        require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                                        require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                                                                                                                        staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args this.address
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _1029 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            _1040 = mem[_1029]
                                                                                                                            _1047 = mem[416]
                                                                                                                            _1048 = mem[64]
                                                                                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                            mem[mem[64] + 4] = _1047
                                                                                                                            mem[mem[64] + 36] = 64
                                                                                                                            mem[mem[64] + 68] = ('cd', 68).length
                                                                                                                            idx = 0
                                                                                                                            s = cd[68] + 36
                                                                                                                            t = mem[64] + 100
                                                                                                                            while idx < ('cd', 68).length:
                                                                                                                                require cd[s] == address(cd[s])
                                                                                                                                mem[t] = address(cd[s])
                                                                                                                                idx = idx + 1
                                                                                                                                s = s + 32
                                                                                                                                t = t + 32
                                                                                                                                continue 
                                                                                                                            require ext_code.size(address(cd[4]))
                                                                                                                            staticcall address(cd[4]).mem[mem[64] len 4] with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args mem[mem[64] + 4 len _1048 + (32 * ('cd', 68).length) + -mem[64] + 96]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _1308 = mem[64]
                                                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _1316 = mem[_1308]
                                                                                                                                require mem[_1308] <= test266151307()
                                                                                                                                require _1308 + mem[_1308] + 31 < _1308 + return_data.size
                                                                                                                                _1324 = mem[_1308 + mem[_1308]]
                                                                                                                                if mem[_1308 + mem[_1308]] > test266151307():
                                                                                                                                    revert with 0, 65
                                                                                                                                else:
                                                                                                                                    if _1308 + ceil32(return_data.size) + ceil32(32 * mem[_1308 + mem[_1308]]) + 1 > test266151307() or ceil32(32 * mem[_1308 + mem[_1308]]) + 1 < 0:
                                                                                                                                        revert with 0, 65
                                                                                                                                    else:
                                                                                                                                        mem[64] = _1308 + ceil32(return_data.size) + ceil32(32 * mem[_1308 + mem[_1308]]) + 1
                                                                                                                                        mem[_1308 + ceil32(return_data.size)] = _1324
                                                                                                                                        require return_data.size >= _1316 + (32 * _1324) + 32
                                                                                                                                        mem[_1308 + ceil32(return_data.size) + 32 len 32 * _1324] = mem[_1308 + _1316 + 32 len 32 * _1324]
                                                                                                                                        if ('cd', 68).length < 1:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            if ('cd', 68).length - 1 >= _1324:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                mem[448] = mem[(32 * ('cd', 68).length - 1) + _1308 + ceil32(return_data.size) + 32]
                                                                                                                                                _1591 = mem[416]
                                                                                                                                                _1592 = mem[64]
                                                                                                                                                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                                                                                                                mem[mem[64] + 4] = _1591
                                                                                                                                                mem[mem[64] + 36] = 0
                                                                                                                                                mem[mem[64] + 68] = 160
                                                                                                                                                mem[mem[64] + 164] = ('cd', 68).length
                                                                                                                                                idx = 0
                                                                                                                                                s = cd[68] + 36
                                                                                                                                                t = mem[64] + 196
                                                                                                                                                while idx < ('cd', 68).length:
                                                                                                                                                    require cd[s] == address(cd[s])
                                                                                                                                                    mem[t] = address(cd[s])
                                                                                                                                                    idx = idx + 1
                                                                                                                                                    s = s + 32
                                                                                                                                                    t = t + 32
                                                                                                                                                    continue 
                                                                                                                                                mem[_1592 + 100] = this.address
                                                                                                                                                mem[_1592 + 132] = block.timestamp + 60
                                                                                                                                                require ext_code.size(address(cd[4]))
                                                                                                                                                call address(cd[4]).mem[mem[64] len 4] with:
                                                                                                                                                     gas gas_remaining wei
                                                                                                                                                    args mem[mem[64] + 4 len _1592 + (32 * ('cd', 68).length) + -mem[64] + 192]
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    if gas_remaining < gas_remaining:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        mem[352] = 0
                                                                                                                                                        if ('cd', 68).length < 1:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                                                                                revert with 0, 50
                                                                                                                                                            else:
                                                                                                                                                                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                                                                                if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                                                                                                                                                                    if eth.balance(this.address) < _1040:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        mem[480] = eth.balance(this.address) - _1040
                                                                                                                                                                        mem[mem[64]] = mem[320]
                                                                                                                                                                        mem[mem[64] + 32] = 0
                                                                                                                                                                        mem[mem[64] + 64] = mem[384]
                                                                                                                                                                        mem[mem[64] + 96] = mem[416]
                                                                                                                                                                        mem[mem[64] + 128] = mem[448]
                                                                                                                                                                        mem[mem[64] + 160] = eth.balance(this.address) - _1040
                                                                                                                                                                        mem[mem[64] + 192] = mem[512]
                                                                                                                                                                        return mem[mem[64]], 0, mem[mem[64] + 64 len 96], eth.balance(this.address) - _1040, mem[mem[64] + 192]
                                                                                                                                                                else:
                                                                                                                                                                    if ('cd', 68).length < 1:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                        else:
                                                                                                                                                                            require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                                                                                            mem[mem[64] + 4] = this.address
                                                                                                                                                                            require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                                                                                                                                                                            staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                                   args this.address
                                                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                            else:
                                                                                                                                                                                _1884 = mem[64]
                                                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                if mem[_1884] < _1040:
                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                else:
                                                                                                                                                                                    mem[480] = mem[_1884] - _1040
                                                                                                                                                                                    mem[mem[64]] = mem[320]
                                                                                                                                                                                    mem[mem[64] + 32] = 0
                                                                                                                                                                                    mem[mem[64] + 64] = mem[384]
                                                                                                                                                                                    mem[mem[64] + 96] = mem[416]
                                                                                                                                                                                    mem[mem[64] + 128] = mem[448]
                                                                                                                                                                                    mem[mem[64] + 160] = mem[480]
                                                                                                                                                                                    mem[mem[64] + 192] = mem[512]
                                                                                                                                                                                    return mem[mem[64]], 0, mem[mem[64] + 64 len 160]
                                        else:
                                            mem[(6 * ceil32(return_data.size)) + 548] = address(cd[4])
                                            mem[(6 * ceil32(return_data.size)) + 580] = -101
                                            require ext_code.size(address(('cd', 68)[0]))
                                            call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[4]), -101
                                            mem[(6 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'FAIL TO APPROVE'
                                                else:
                                                    mem[(7 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                    mem[(7 * ceil32(return_data.size)) + 548] = cd[100]
                                                    mem[(7 * ceil32(return_data.size)) + 580] = 64
                                                    mem[(7 * ceil32(return_data.size)) + 612] = ('cd', 36).length
                                                    idx = 0
                                                    s = cd[36] + 36
                                                    t = (7 * ceil32(return_data.size)) + 644
                                                    while idx < ('cd', 36).length:
                                                        require cd[s] == address(cd[s])
                                                        mem[t] = address(cd[s])
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(address(cd[4]))
                                                    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                            gas gas_remaining wei
                                                           args cd[100], Array(len=('cd', 36).length, data=mem[(7 * ceil32(return_data.size)) + 644 len 32 * ('cd', 36).length])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[(7 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = (8 * ceil32(return_data.size)) + 544
                                                        require return_data.size >= 32
                                                        _274 = mem[(7 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32
                                                        require mem[(7 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                                                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 575 < (7 * ceil32(return_data.size)) + return_data.size + 544
                                                        _278 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544]
                                                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544] > test266151307():
                                                            revert with 0, 65
                                                        else:
                                                            if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544]) + 545 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544]) + 1 < 0:
                                                                revert with 0, 65
                                                            else:
                                                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, cd[100]) >> 32 + 544]) + 545
                                                                mem[(8 * ceil32(return_data.size)) + 544] = _278
                                                                require return_data.size >= _274 + (32 * _278) + 32
                                                                mem[(8 * ceil32(return_data.size)) + 576 len 32 * _278] = mem[(7 * ceil32(return_data.size)) + _274 + 576 len 32 * _278]
                                                                if ('cd', 36).length < 1:
                                                                    revert with 0, 17
                                                                else:
                                                                    if ('cd', 36).length - 1 >= _278:
                                                                        revert with 0, 50
                                                                    else:
                                                                        mem[384] = mem[(32 * ('cd', 36).length - 1) + (8 * ceil32(return_data.size)) + 576]
                                                                        if ('cd', 36).length < 1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            if ('cd', 36).length - 1 >= ('cd', 36).length:
                                                                                revert with 0, 50
                                                                            else:
                                                                                require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                                                                mem[mem[64] + 4] = this.address
                                                                                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                                                                                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args this.address
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _654 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _658 = mem[_654]
                                                                                    mem[mem[64] + 36] = 128
                                                                                    mem[mem[64] + 132] = ('cd', 36).length
                                                                                    idx = 0
                                                                                    s = cd[36] + 36
                                                                                    t = mem[64] + 164
                                                                                    while idx < ('cd', 36).length:
                                                                                        require cd[s] == address(cd[s])
                                                                                        mem[t] = address(cd[s])
                                                                                        idx = idx + 1
                                                                                        s = s + 32
                                                                                        t = t + 32
                                                                                        continue 
                                                                                    mem[mem[64] + 68] = this.address
                                                                                    mem[mem[64] + 100] = block.timestamp + 60
                                                                                    require ext_code.size(address(cd[4]))
                                                                                    call address(cd[4]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                                                       value cd[100] wei
                                                                                         gas gas_remaining wei
                                                                                        args 0, 128, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[mem[64] + 164 len 32 * ('cd', 36).length]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        if gas_remaining < gas_remaining:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            mem[320] = 0
                                                                                            if ('cd', 36).length < 1:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if ('cd', 36).length - 1 >= ('cd', 36).length:
                                                                                                    revert with 0, 50
                                                                                                else:
                                                                                                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                                                                                                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args this.address
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _994 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        if mem[_994] < _658:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            mem[416] = mem[_994] - _658
                                                                                                            if ('cd', 68).length < 1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                                    if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                                                                                                                        _1005 = mem[416]
                                                                                                                        _1006 = mem[64]
                                                                                                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                        mem[mem[64] + 4] = _1005
                                                                                                                        mem[mem[64] + 36] = 64
                                                                                                                        mem[mem[64] + 68] = ('cd', 68).length
                                                                                                                        idx = 0
                                                                                                                        s = cd[68] + 36
                                                                                                                        t = mem[64] + 100
                                                                                                                        while idx < ('cd', 68).length:
                                                                                                                            require cd[s] == address(cd[s])
                                                                                                                            mem[t] = address(cd[s])
                                                                                                                            idx = idx + 1
                                                                                                                            s = s + 32
                                                                                                                            t = t + 32
                                                                                                                            continue 
                                                                                                                        require ext_code.size(address(cd[4]))
                                                                                                                        staticcall address(cd[4]).mem[mem[64] len 4] with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args mem[mem[64] + 4 len _1006 + (32 * ('cd', 68).length) + -mem[64] + 96]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _1309 = mem[64]
                                                                                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            _1317 = mem[_1309]
                                                                                                                            require mem[_1309] <= test266151307()
                                                                                                                            require _1309 + mem[_1309] + 31 < _1309 + return_data.size
                                                                                                                            _1325 = mem[_1309 + mem[_1309]]
                                                                                                                            if mem[_1309 + mem[_1309]] > test266151307():
                                                                                                                                revert with 0, 65
                                                                                                                            else:
                                                                                                                                if _1309 + ceil32(return_data.size) + ceil32(32 * mem[_1309 + mem[_1309]]) + 1 > test266151307() or ceil32(32 * mem[_1309 + mem[_1309]]) + 1 < 0:
                                                                                                                                    revert with 0, 65
                                                                                                                                else:
                                                                                                                                    mem[64] = _1309 + ceil32(return_data.size) + ceil32(32 * mem[_1309 + mem[_1309]]) + 1
                                                                                                                                    mem[_1309 + ceil32(return_data.size)] = _1325
                                                                                                                                    require return_data.size >= _1317 + (32 * _1325) + 32
                                                                                                                                    mem[_1309 + ceil32(return_data.size) + 32 len 32 * _1325] = mem[_1309 + _1317 + 32 len 32 * _1325]
                                                                                                                                    if ('cd', 68).length < 1:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        if ('cd', 68).length - 1 >= _1325:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            mem[448] = mem[(32 * ('cd', 68).length - 1) + _1309 + ceil32(return_data.size) + 32]
                                                                                                                                            _1594 = mem[416]
                                                                                                                                            _1595 = mem[64]
                                                                                                                                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                                                                                                            mem[mem[64] + 4] = _1594
                                                                                                                                            mem[mem[64] + 36] = 0
                                                                                                                                            mem[mem[64] + 68] = 160
                                                                                                                                            mem[mem[64] + 164] = ('cd', 68).length
                                                                                                                                            idx = 0
                                                                                                                                            s = cd[68] + 36
                                                                                                                                            t = mem[64] + 196
                                                                                                                                            while idx < ('cd', 68).length:
                                                                                                                                                require cd[s] == address(cd[s])
                                                                                                                                                mem[t] = address(cd[s])
                                                                                                                                                idx = idx + 1
                                                                                                                                                s = s + 32
                                                                                                                                                t = t + 32
                                                                                                                                                continue 
                                                                                                                                            mem[_1595 + 100] = this.address
                                                                                                                                            mem[_1595 + 132] = block.timestamp + 60
                                                                                                                                            require ext_code.size(address(cd[4]))
                                                                                                                                            call address(cd[4]).mem[mem[64] len 4] with:
                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                args mem[mem[64] + 4 len _1595 + (32 * ('cd', 68).length) + -mem[64] + 192]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                if gas_remaining < gas_remaining:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    mem[352] = 0
                                                                                                                                                    if ('cd', 68).length < 1:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                                                                            revert with 0, 50
                                                                                                                                                        else:
                                                                                                                                                            require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                                                                            if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                                                                                                                                                                if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    mem[480] = 0
                                                                                                                                                                    mem[mem[64]] = mem[320]
                                                                                                                                                                    mem[mem[64] + 32] = 0
                                                                                                                                                                    mem[mem[64] + 64] = mem[384]
                                                                                                                                                                    mem[mem[64] + 96] = mem[416]
                                                                                                                                                                    mem[mem[64] + 128] = mem[448]
                                                                                                                                                                    mem[mem[64] + 160] = 0
                                                                                                                                                                    mem[mem[64] + 192] = mem[512]
                                                                                                                                                                    return mem[mem[64]], 0, mem[mem[64] + 64 len 96], 0, mem[mem[64] + 192]
                                                                                                                                                            else:
                                                                                                                                                                if ('cd', 68).length < 1:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                    else:
                                                                                                                                                                        require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                                                                                        require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                                                                                                                                                                        staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                               args this.address
                                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            _1885 = mem[64]
                                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                            if mem[_1885] < eth.balance(this.address):
                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                            else:
                                                                                                                                                                                mem[480] = mem[_1885] - eth.balance(this.address)
                                                                                                                                                                                mem[mem[64]] = mem[320]
                                                                                                                                                                                mem[mem[64] + 32] = 0
                                                                                                                                                                                mem[mem[64] + 64] = mem[384]
                                                                                                                                                                                mem[mem[64] + 96] = mem[416]
                                                                                                                                                                                mem[mem[64] + 128] = mem[448]
                                                                                                                                                                                mem[mem[64] + 160] = mem[480]
                                                                                                                                                                                mem[mem[64] + 192] = mem[512]
                                                                                                                                                                                return mem[mem[64]], 0, mem[mem[64] + 64 len 160]
                                                                                                                    else:
                                                                                                                        if ('cd', 68).length < 1:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                                                revert with 0, 50
                                                                                                                            else:
                                                                                                                                require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                                                mem[mem[64] + 4] = this.address
                                                                                                                                require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                                                                                                                                staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args this.address
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _1030 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    _1042 = mem[_1030]
                                                                                                                                    _1049 = mem[416]
                                                                                                                                    _1050 = mem[64]
                                                                                                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                                    mem[mem[64] + 4] = _1049
                                                                                                                                    mem[mem[64] + 36] = 64
                                                                                                                                    mem[mem[64] + 68] = ('cd', 68).length
                                                                                                                                    idx = 0
                                                                                                                                    s = cd[68] + 36
                                                                                                                                    t = mem[64] + 100
                                                                                                                                    while idx < ('cd', 68).length:
                                                                                                                                        require cd[s] == address(cd[s])
                                                                                                                                        mem[t] = address(cd[s])
                                                                                                                                        idx = idx + 1
                                                                                                                                        s = s + 32
                                                                                                                                        t = t + 32
                                                                                                                                        continue 
                                                                                                                                    require ext_code.size(address(cd[4]))
                                                                                                                                    staticcall address(cd[4]).mem[mem[64] len 4] with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args mem[mem[64] + 4 len _1050 + (32 * ('cd', 68).length) + -mem[64] + 96]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _1310 = mem[64]
                                                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        _1318 = mem[_1310]
                                                                                                                                        require mem[_1310] <= test266151307()
                                                                                                                                        require _1310 + mem[_1310] + 31 < _1310 + return_data.size
                                                                                                                                        _1326 = mem[_1310 + mem[_1310]]
                                                                                                                                        if mem[_1310 + mem[_1310]] > test266151307():
                                                                                                                                            revert with 0, 65
                                                                                                                                        else:
                                                                                                                                            if _1310 + ceil32(return_data.size) + ceil32(32 * mem[_1310 + mem[_1310]]) + 1 > test266151307() or ceil32(32 * mem[_1310 + mem[_1310]]) + 1 < 0:
                                                                                                                                                revert with 0, 65
                                                                                                                                            else:
                                                                                                                                                mem[64] = _1310 + ceil32(return_data.size) + ceil32(32 * mem[_1310 + mem[_1310]]) + 1
                                                                                                                                                mem[_1310 + ceil32(return_data.size)] = _1326
                                                                                                                                                require return_data.size >= _1318 + (32 * _1326) + 32
                                                                                                                                                mem[_1310 + ceil32(return_data.size) + 32 len 32 * _1326] = mem[_1310 + _1318 + 32 len 32 * _1326]
                                                                                                                                                if ('cd', 68).length < 1:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    if ('cd', 68).length - 1 >= _1326:
                                                                                                                                                        revert with 0, 50
                                                                                                                                                    else:
                                                                                                                                                        mem[448] = mem[(32 * ('cd', 68).length - 1) + _1310 + ceil32(return_data.size) + 32]
                                                                                                                                                        _1597 = mem[416]
                                                                                                                                                        _1598 = mem[64]
                                                                                                                                                        mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                                                                                                                        mem[mem[64] + 4] = _1597
                                                                                                                                                        mem[mem[64] + 36] = 0
                                                                                                                                                        mem[mem[64] + 68] = 160
                                                                                                                                                        mem[mem[64] + 164] = ('cd', 68).length
                                                                                                                                                        idx = 0
                                                                                                                                                        s = cd[68] + 36
                                                                                                                                                        t = mem[64] + 196
                                                                                                                                                        while idx < ('cd', 68).length:
                                                                                                                                                            require cd[s] == address(cd[s])
                                                                                                                                                            mem[t] = address(cd[s])
                                                                                                                                                            idx = idx + 1
                                                                                                                                                            s = s + 32
                                                                                                                                                            t = t + 32
                                                                                                                                                            continue 
                                                                                                                                                        mem[_1598 + 100] = this.address
                                                                                                                                                        mem[_1598 + 132] = block.timestamp + 60
                                                                                                                                                        require ext_code.size(address(cd[4]))
                                                                                                                                                        call address(cd[4]).mem[mem[64] len 4] with:
                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                            args mem[mem[64] + 4 len _1598 + (32 * ('cd', 68).length) + -mem[64] + 192]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            if gas_remaining < gas_remaining:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                mem[352] = 0
                                                                                                                                                                if ('cd', 68).length < 1:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                    else:
                                                                                                                                                                        require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                                                                                        if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) == address(ext_call.return_data[0]):
                                                                                                                                                                            if eth.balance(this.address) < _1042:
                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                            else:
                                                                                                                                                                                mem[480] = eth.balance(this.address) - _1042
                                                                                                                                                                                mem[mem[64]] = mem[320]
                                                                                                                                                                                mem[mem[64] + 32] = 0
                                                                                                                                                                                mem[mem[64] + 64] = mem[384]
                                                                                                                                                                                mem[mem[64] + 96] = mem[416]
                                                                                                                                                                                mem[mem[64] + 128] = mem[448]
                                                                                                                                                                                mem[mem[64] + 160] = eth.balance(this.address) - _1042
                                                                                                                                                                                mem[mem[64] + 192] = mem[512]
                                                                                                                                                                                return mem[mem[64]], 0, mem[mem[64] + 64 len 96], eth.balance(this.address) - _1042, mem[mem[64] + 192]
                                                                                                                                                                        else:
                                                                                                                                                                            if ('cd', 68).length < 1:
                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                            else:
                                                                                                                                                                                if ('cd', 68).length - 1 >= ('cd', 68).length:
                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                else:
                                                                                                                                                                                    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
                                                                                                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                                                                                                    require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                                                                                                                                                                                    staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                                                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                                                           args this.address
                                                                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                    else:
                                                                                                                                                                                        _1886 = mem[64]
                                                                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                                        if mem[_1886] < _1042:
                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                        else:
                                                                                                                                                                                            mem[480] = mem[_1886] - _1042
                                                                                                                                                                                            mem[mem[64]] = mem[320]
                                                                                                                                                                                            mem[mem[64] + 32] = 0
                                                                                                                                                                                            mem[mem[64] + 64] = mem[384]
                                                                                                                                                                                            mem[mem[64] + 96] = mem[416]
                                                                                                                                                                                            mem[mem[64] + 128] = mem[448]
                                                                                                                                                                                            mem[mem[64] + 160] = mem[480]
                                                                                                                                                                                            mem[mem[64] + 192] = mem[512]
                                                                                                                                                                                            return mem[mem[64]], 0, mem[mem[64] + 64 len 160]
}



}

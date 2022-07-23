contract main {




// =====================  Runtime code  =====================


const sub_07560589(?) = 0x75d3fa21fb211d43a3e08f90ec66b965aef39b30

const sub_66e79509(?) = 0

const sub_8747ed11(?) = 0

const sub_ba4df334(?) = 1

const sub_d6f8d7a7(?) = 3

const sub_dd2d10a1(?) = 2

const sub_f1e00b74(?) = 4


function _fallback() payable {
    revert
}

function sub_62598fb3(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = cd[68]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[68]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Inital transfer from failed'
    idx = 0
    s = cd[68]
    while idx < ('cd', 164).length:
        require idx < ('cd', 132).length
        require idx < ('cd', 164).length
        require cd[(cd[164] + (32 * idx) + 36)] < calldata.size + -cd[164] - 67
        require cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)]
        _236 = mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)]) + 32
        mem[_236] = cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)]
        mem[_236 + 32 len cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)]] = call.data[cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 68 len cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)]]
        mem[_236 + cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)] + 32] = 0
        if not cd[((32 * idx) + cd[132] + 36)]:
            require cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)] >= 64
            _242 = mem[_236 + 32]
            require mem[_236 + 32] == mem[_236 + 44 len 20]
            _254 = mem[_236 + 64]
            require mem[_236 + 64] <= test266151307()
            require _236 + cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)] + 32 > _236 + mem[_236 + 64] + 63
            _269 = mem[_236 + mem[_236 + 64] + 32]
            require mem[_236 + mem[_236 + 64] + 32] <= test266151307()
            _292 = mem[64]
            require mem[64] + (32 * mem[_236 + mem[_236 + 64] + 32]) + 32 >= mem[64] and mem[64] + (32 * mem[_236 + mem[_236 + 64] + 32]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[_236 + mem[_236 + 64] + 32]) + 32
            mem[_292] = _269
            require cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)] + 32 >= _254 + (32 * _269) + 64
            u = _236 + _254 + 64
            v = _292 + 32
            t = 0
            while t < _269:
                require mem[u] == mem[u + 12 len 20]
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t + 1
                continue 
            require 0 < _269
            _467 = mem[_292 + 32]
            mem[mem[64] + 4] = address(_242)
            mem[mem[64] + 36] = s
            require ext_code.size(address(_467))
            call address(_467).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_242), s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _484 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_484] == bool(mem[_484])
            if not mem[_484]:
                revert with 0, 'Approve failed'
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = _269
            t = 0
            u = _292 + 32
            v = mem[64] + 196
            while t < _269:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + (500 * 3600)
            require ext_code.size(address(_242))
            call address(_242).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args s, 0, 160, address(this.address), block.timestamp + (500 * 3600), _269, mem[mem[64] + 196 len 32 * _269]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[_292] - 1 < mem[_292]
            _681 = mem[(32 * mem[_292] - 1) + _292 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_681))
            staticcall address(_681).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _696 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            idx = idx + 1
            s = mem[_696]
            continue 
        if cd[((32 * idx) + cd[132] + 36)] == 1:
            require cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)] >= 64
            _246 = mem[_236 + 32]
            require mem[_236 + 32] == mem[_236 + 44 len 20]
            _263 = mem[_236 + 64]
            require mem[_236 + 64] <= test266151307()
            require _236 + cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)] + 32 > _236 + mem[_236 + 64] + 63
            _275 = mem[_236 + mem[_236 + 64] + 32]
            require mem[_236 + mem[_236 + 64] + 32] <= test266151307()
            _297 = mem[64]
            require mem[64] + (32 * mem[_236 + mem[_236 + 64] + 32]) + 32 >= mem[64] and mem[64] + (32 * mem[_236 + mem[_236 + 64] + 32]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[_236 + mem[_236 + 64] + 32]) + 32
            mem[_297] = _275
            require cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)] + 32 >= _263 + (32 * _275) + 64
            u = _236 + _263 + 64
            v = _297 + 32
            t = 0
            while t < _275:
                require mem[u] == mem[u + 12 len 20]
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t + 1
                continue 
            require 0 < _275
            _465 = mem[_297 + 32]
            mem[mem[64] + 4] = address(_246)
            mem[mem[64] + 36] = s
            require ext_code.size(address(_465))
            call address(_465).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_246), s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _483 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_483] == bool(mem[_483])
            if not mem[_483]:
                revert with 0, 'Approve failed'
            mem[mem[64]] = 0x99963f400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 192
            mem[mem[64] + 196] = _275
            t = 0
            u = _297 + 32
            v = mem[64] + 228
            while t < _275:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + (500 * 3600)
            mem[mem[64] + 164] = 1
            require ext_code.size(address(_246))
            call address(_246).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5, bool arg6) with:
                 gas gas_remaining wei
                args s, 0, 192, address(this.address), block.timestamp + (500 * 3600), 1, _275, mem[mem[64] + 228 len 32 * _275]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[_297] - 1 < mem[_297]
            _679 = mem[(32 * mem[_297] - 1) + _297 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_679))
            staticcall address(_679).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _695 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            idx = idx + 1
            s = mem[_695]
            continue 
        if cd[((32 * idx) + cd[132] + 36)] == 3:
            require cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)] >= 64
            _250 = mem[_236 + 32]
            require mem[_236 + 32] == mem[_236 + 44 len 20]
            _268 = mem[_236 + 64]
            require mem[_236 + 64] <= test266151307()
            require _236 + cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)] + 32 > _236 + mem[_236 + 64] + 63
            _283 = mem[_236 + mem[_236 + 64] + 32]
            require mem[_236 + mem[_236 + 64] + 32] <= test266151307()
            _303 = mem[64]
            require mem[64] + (32 * mem[_236 + mem[_236 + 64] + 32]) + 32 >= mem[64] and mem[64] + (32 * mem[_236 + mem[_236 + 64] + 32]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[_236 + mem[_236 + 64] + 32]) + 32
            mem[_303] = _283
            require cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)] + 32 >= _268 + (32 * _283) + 64
            u = _236 + _268 + 64
            v = _303 + 32
            t = 0
            while t < _283:
                require mem[u] == mem[u + 12 len 20]
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t + 1
                continue 
            require 0 < _283
            _463 = mem[_303 + 32]
            mem[mem[64] + 4] = address(_250)
            mem[mem[64] + 36] = s
            require ext_code.size(address(_463))
            call address(_463).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_250), s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _482 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_482] == bool(mem[_482])
            if not mem[_482]:
                revert with 0, 'Approve failed'
            _517 = mem[64]
            mem[mem[64]] = 0xf824f62e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 192
            mem[mem[64] + 196] = _283
            s = 0
            t = _303 + 32
            u = mem[64] + 228
            while s < _283:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_517 + 100] = this.address
            mem[_517 + 132] = block.timestamp + (500 * 3600)
            mem[_517 + 164] = 0
            require ext_code.size(address(_250))
            call address(_250).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _517 + (32 * _283) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[_303] - 1 < mem[_303]
            _677 = mem[(32 * mem[_303] - 1) + _303 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_677))
            staticcall address(_677).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _694 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            idx = idx + 1
            s = mem[_694]
            continue 
        if cd[((32 * idx) + cd[132] + 36)] != 4:
            if cd[((32 * idx) + cd[132] + 36)] != 2:
                revert with 0, 'Invalid dexRouterType'
            require cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)] >= 96
            _262 = mem[_236 + 32]
            require mem[_236 + 32] == mem[_236 + 44 len 20]
            _282 = mem[_236 + 64]
            require mem[_236 + 64] <= test266151307()
            require _236 + mem[_236 + 64] + 63 < _236 + cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)] + 32
            _291 = mem[_236 + mem[_236 + 64] + 32]
            require mem[_236 + mem[_236 + 64] + 32] <= test266151307()
            _302 = mem[64]
            require mem[64] + ceil32(mem[_236 + mem[_236 + 64] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_236 + mem[_236 + 64] + 32]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(mem[_236 + mem[_236 + 64] + 32]) + 32
            mem[_302] = _291
            require _282 + _291 + 64 <= cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)] + 32
            t = 0
            while t < _291:
                mem[t + _302 + 32] = mem[t + _236 + _282 + 64]
                t = t + 32
                continue 
            if ceil32(_291) <= _291:
                _470 = mem[_236 + 96]
                require mem[_236 + 96] == mem[_236 + 108 len 20]
                mem[mem[64] + 4] = address(_262)
                mem[mem[64] + 36] = s
                require ext_code.size(address(_470))
                call address(_470).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_262), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _527 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_527] == bool(mem[_527])
                if not mem[_527]:
                    revert with 0, 'Approve failed'
                _559 = mem[64]
                mem[64] = mem[64] + 160
                mem[_559] = _302
                mem[_559 + 32] = this.address
                mem[_559 + 64] = block.timestamp + (500 * 3600)
                mem[_559 + 96] = s
                mem[_559 + 128] = 0
                mem[mem[64]] = 0xc04b8d5900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 160
                mem[mem[64] + 196] = _291
                s = 0
                while s < _291:
                    mem[s + mem[64] + 228] = mem[s + _302 + 32]
                    s = s + 32
                    continue 
                if ceil32(_291) <= _291:
                    mem[mem[64] + 68] = mem[_559 + 44 len 20]
                    mem[mem[64] + 100] = mem[_559 + 64]
                    mem[mem[64] + 132] = mem[_559 + 96]
                    mem[mem[64] + 164] = mem[_559 + 128]
                    require ext_code.size(address(_262))
                    call address(_262).exactInput(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 32, 160, mem[mem[64] + 68 len 128], _291, mem[mem[64] + 228 len ceil32(_291)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _675 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = idx + 1
                    s = mem[_675]
                    continue 
                mem[mem[64] + _291 + 228] = 0
                mem[mem[64] + 68] = mem[_559 + 44 len 20]
                mem[mem[64] + 100] = mem[_559 + 64]
                mem[mem[64] + 132] = mem[_559 + 96]
                mem[mem[64] + 164] = mem[_559 + 128]
                require ext_code.size(address(_262))
                call address(_262).exactInput(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 32, 160, mem[mem[64] + 68 len 128], _291, mem[mem[64] + 228 len ceil32(_291)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _683 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                idx = idx + 1
                s = mem[_683]
                continue 
            mem[_302 + _291 + 32] = 0
            _473 = mem[_236 + 96]
            require mem[_236 + 96] == mem[_236 + 108 len 20]
            mem[mem[64] + 4] = address(_262)
            mem[mem[64] + 36] = s
            require ext_code.size(address(_473))
            call address(_473).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_262), s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _532 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_532] == bool(mem[_532])
            if not mem[_532]:
                revert with 0, 'Approve failed'
            _568 = mem[64]
            mem[64] = mem[64] + 160
            mem[_568] = _302
            mem[_568 + 32] = this.address
            mem[_568 + 64] = block.timestamp + (500 * 3600)
            mem[_568 + 96] = s
            mem[_568 + 128] = 0
            mem[mem[64]] = 0xc04b8d5900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 160
            mem[mem[64] + 196] = _291
            s = 0
            while s < _291:
                mem[s + mem[64] + 228] = mem[s + _302 + 32]
                s = s + 32
                continue 
            if ceil32(_291) <= _291:
                mem[mem[64] + 68] = mem[_568 + 44 len 20]
                mem[mem[64] + 100] = mem[_568 + 64]
                mem[mem[64] + 132] = mem[_568 + 96]
                mem[mem[64] + 164] = mem[_568 + 128]
                require ext_code.size(address(_262))
                call address(_262).exactInput(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 32, 160, mem[mem[64] + 68 len 128], _291, mem[mem[64] + 228 len ceil32(_291)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _676 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                idx = idx + 1
                s = mem[_676]
                continue 
            mem[mem[64] + _291 + 228] = 0
            mem[mem[64] + 68] = mem[_568 + 44 len 20]
            mem[mem[64] + 100] = mem[_568 + 64]
            mem[mem[64] + 132] = mem[_568 + 96]
            mem[mem[64] + 164] = mem[_568 + 128]
            require ext_code.size(address(_262))
            call address(_262).exactInput(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 32, 160, mem[mem[64] + 68 len 128], _291, mem[mem[64] + 228 len ceil32(_291)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _684 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            idx = idx + 1
            s = mem[_684]
            continue 
        require cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)] >= 64
        _253 = mem[_236 + 32]
        require mem[_236 + 32] == mem[_236 + 44 len 20]
        _274 = mem[_236 + 64]
        require mem[_236 + 64] <= test266151307()
        require _236 + cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)] + 32 > _236 + mem[_236 + 64] + 63
        _286 = mem[_236 + mem[_236 + 64] + 32]
        require mem[_236 + mem[_236 + 64] + 32] <= test266151307()
        _308 = mem[64]
        require mem[64] + (32 * mem[_236 + mem[_236 + 64] + 32]) + 32 >= mem[64] and mem[64] + (32 * mem[_236 + mem[_236 + 64] + 32]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * mem[_236 + mem[_236 + 64] + 32]) + 32
        mem[_308] = _286
        require cd[(cd[164] + cd[(cd[164] + (32 * idx) + 36)] + 36)] + 32 >= _274 + (32 * _286) + 64
        u = _236 + _274 + 64
        v = _308 + 32
        t = 0
        while t < _286:
            require mem[u] == mem[u + 12 len 20]
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t + 1
            continue 
        require 0 < _286
        _461 = mem[_308 + 32]
        mem[mem[64] + 4] = address(_253)
        mem[mem[64] + 36] = s
        require ext_code.size(address(_461))
        call address(_461).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_253), s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _481 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_481] == bool(mem[_481])
        if not mem[_481]:
            revert with 0, 'Approve failed'
        mem[mem[64]] = 0xbc03d0f300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = _286
        t = 0
        u = _308 + 32
        v = mem[64] + 196
        while t < _286:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = 0x75d3fa21fb211d43a3e08f90ec66b965aef39b30
        require ext_code.size(address(_253))
        call address(_253).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, address arg5) with:
             gas gas_remaining wei
            args s, 0, 160, address(this.address), 0x75d3fa21fb211d43a3e08f90ec66b965aef39b30, _286, mem[mem[64] + 196 len 32 * _286]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _668 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _685 = mem[_668]
        require mem[_668] <= test266151307()
        require _668 + return_data.size > _668 + mem[_668] + 31
        _693 = mem[_668 + mem[_668]]
        require mem[_668 + mem[_668]] <= test266151307()
        require (32 * mem[_668 + mem[_668]]) + 32 >= 0 and _668 + ceil32(return_data.size) + (32 * mem[_668 + mem[_668]]) + 32 <= test266151307()
        mem[64] = _668 + ceil32(return_data.size) + (32 * mem[_668 + mem[_668]]) + 32
        mem[_668 + ceil32(return_data.size)] = _693
        require return_data.size >= _685 + (32 * _693) + 32
        t = _668 + _685 + 32
        u = _668 + ceil32(return_data.size) + 32
        s = 0
        while s < _693:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        require mem[_308] - 1 < mem[_308]
        _712 = mem[(32 * mem[_308] - 1) + _308 + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_712))
        staticcall address(_712).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _715 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        idx = idx + 1
        s = mem[_715]
        continue 
    if s <= cd[100]:
        revert with 0, 'Final amount lower than required'
    _230 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = s
    _232 = mem[64]
    mem[mem[64]] = 68
    mem[64] = mem[64] + 100
    mem[_232 + 32 len 4] = unknown_0xa9059cbb(?????)
    _235 = mem[_232]
    mem[_230 + 100 len ceil32(mem[_232])] = mem[_232 + 32 len ceil32(mem[_232])]
    if ceil32(_235) <= _235:
        call address(cd[36]) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _235 + _230 + -mem[64] + 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        else:
            _471 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_471 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_471 + 32] == bool(mem[_471 + 32])
                if not mem[_471 + 32]:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
    else:
        mem[_230 + _235 + 100] = 0
        call address(cd[36]) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _235 + _230 + -mem[64] + 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        else:
            _478 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_478 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_478 + 32] == bool(mem[_478 + 32])
                if not mem[_478 + 32]:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
    return s
}



}

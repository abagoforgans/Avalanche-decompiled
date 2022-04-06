contract main {




// =====================  Runtime code  =====================


const WBNBAddress = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


address stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
uint256 stor3;

function workers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function addresses(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function changeAutoWrap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'get off dude'
    stor3 = arg1
}

function registerWorker(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'get off dude'
    stor1[address(arg1)] = 1
}

function registerAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'get off dude'
    stor2[address(arg1)] = 1
}

function sendBNB(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'get off dude'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sendToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor0 != msg.sender:
        revert with 0, 'get off dude'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Transaction failed'
}

function sendTokenToRegisteredAddress(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'SWR: worker not registered'
    if bool(stor2[address(arg3)]) != 1:
        revert with 0, 'SWR: address not registered'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Transaction failed'
}

function sendTokenToRegisteredCexAddress(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'SWR: worker not registered'
    if bool(stor2[address(arg3)]) != 1:
        revert with 0, 'SWR: address not registered'
    if arg1 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if bool(ext_call.return_data[0]) != 1:
            revert with 0, 'Transaction failed'
    else:
        stor3 = 0
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call arg3 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        stor3 = 1
}

function migrate(address[] arg1, address arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'get off dude'
    idx = 0
    s = 0
    s = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16 = mem[_15]
        require mem[_15] == mem[_15]
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = _16
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), _16
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_19] == bool(mem[_19])
        if bool(mem[_19]) != 1:
            revert with 0, 'Transaction failed'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _16
        s = cd[((32 * idx) + arg1 + 36)]
        continue 
}

function swapExactTo(uint256 arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, address[] arg6, uint256[] arg7, uint8[] arg8) {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require arg6 + (32 * arg6.length) + 36 <= calldata.size
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    require arg7.length <= test266151307()
    require arg7 + (32 * arg7.length) + 36 <= calldata.size
    require arg8 <= test266151307()
    require arg8 + 35 < calldata.size
    require arg8.length <= test266151307()
    require arg8 + (32 * arg8.length) + 36 <= calldata.size
    if block.timestamp > arg1:
        revert with 0, 'SWR: Deadline passed'
    if arg2 > -2:
        revert with 'NH{q', 17
    if arg2 + 1 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2 + 1
    mem[64] = (32 * arg2 + 1) + 128
    if not arg2 + 1:
        if 0 >= arg2 + 1:
            revert with 'NH{q', 50
        mem[128] = arg4
        idx = 0
        while idx < arg2:
            if idx >= arg6.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg6 + 36)] == address(cd[((32 * idx) + arg6 + 36)])
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _290 = mem[(32 * idx) + 128]
            if idx >= arg8.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg8 + 36)] == uint8(cd[((32 * idx) + arg8 + 36)])
            if idx >= arg7.length:
                revert with 'NH{q', 50
            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
            staticcall address(cd[((32 * idx) + arg6 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _302 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_302] == mem[_302 + 18 len 14]
            require mem[_302 + 32] == mem[_302 + 50 len 14]
            require mem[_302 + 64] == mem[_302 + 92 len 4]
            if uint8(cd[((32 * idx) + arg8 + 36)]) < 2:
                if not uint8(cd[((32 * idx) + arg8 + 36)]):
                    if not cd[((32 * idx) + arg7 + 36)]:
                        if mem[_302 + 50 len 14]:
                            if False and mem[_302 + 50 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_302 + 50 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_302 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_302 + 18 len 14] and 10000 > -1 / mem[_302 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 10000 * mem[_302 + 18 len 14] / 10000 != mem[_302 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[_302 + 18 len 14] > -1:
                            revert with 'NH{q', 17
                        if 10000 * mem[_302 + 18 len 14] < 10000 * mem[_302 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 10000 * mem[_302 + 18 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + 128] = 0 / 10000 * mem[_302 + 18 len 14]
                    else:
                        if _290 and cd[((32 * idx) + arg7 + 36)] > -1 / _290:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if _290 * cd[((32 * idx) + arg7 + 36)] / cd[((32 * idx) + arg7 + 36)] != _290:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_302 + 50 len 14]:
                            if mem[_302 + 18 len 14] and 10000 > -1 / mem[_302 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_302 + 18 len 14] / 10000 != mem[_302 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_302 + 18 len 14] > (-1 * _290 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_302 + 18 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_302 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_302 + 18 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = 0 / (10000 * mem[_302 + 18 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)])
                        else:
                            if _290 * cd[((32 * idx) + arg7 + 36)] and mem[_302 + 50 len 14] > -1 / _290 * cd[((32 * idx) + arg7 + 36)]:
                                revert with 'NH{q', 17
                            if not mem[_302 + 50 len 14]:
                                revert with 'NH{q', 18
                            if _290 * cd[((32 * idx) + arg7 + 36)] * mem[_302 + 50 len 14] / mem[_302 + 50 len 14] != _290 * cd[((32 * idx) + arg7 + 36)]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_302 + 18 len 14] and 10000 > -1 / mem[_302 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_302 + 18 len 14] / 10000 != mem[_302 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_302 + 18 len 14] > (-1 * _290 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_302 + 18 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_302 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_302 + 18 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = _290 * cd[((32 * idx) + arg7 + 36)] * mem[_302 + 50 len 14] / (10000 * mem[_302 + 18 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)])
                else:
                    if not cd[((32 * idx) + arg7 + 36)]:
                        if mem[_302 + 18 len 14]:
                            if False and mem[_302 + 18 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_302 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_302 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_302 + 50 len 14] and 10000 > -1 / mem[_302 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 10000 * mem[_302 + 50 len 14] / 10000 != mem[_302 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[_302 + 50 len 14] > -1:
                            revert with 'NH{q', 17
                        if 10000 * mem[_302 + 50 len 14] < 10000 * mem[_302 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 10000 * mem[_302 + 50 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + 128] = 0 / 10000 * mem[_302 + 50 len 14]
                    else:
                        if _290 and cd[((32 * idx) + arg7 + 36)] > -1 / _290:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if _290 * cd[((32 * idx) + arg7 + 36)] / cd[((32 * idx) + arg7 + 36)] != _290:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_302 + 18 len 14]:
                            if mem[_302 + 50 len 14] and 10000 > -1 / mem[_302 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_302 + 50 len 14] / 10000 != mem[_302 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_302 + 50 len 14] > (-1 * _290 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_302 + 50 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_302 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_302 + 50 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = 0 / (10000 * mem[_302 + 50 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)])
                        else:
                            if _290 * cd[((32 * idx) + arg7 + 36)] and mem[_302 + 18 len 14] > -1 / _290 * cd[((32 * idx) + arg7 + 36)]:
                                revert with 'NH{q', 17
                            if not mem[_302 + 18 len 14]:
                                revert with 'NH{q', 18
                            if _290 * cd[((32 * idx) + arg7 + 36)] * mem[_302 + 18 len 14] / mem[_302 + 18 len 14] != _290 * cd[((32 * idx) + arg7 + 36)]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_302 + 50 len 14] and 10000 > -1 / mem[_302 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_302 + 50 len 14] / 10000 != mem[_302 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_302 + 50 len 14] > (-1 * _290 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_302 + 50 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_302 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_302 + 50 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = _290 * cd[((32 * idx) + arg7 + 36)] * mem[_302 + 18 len 14] / (10000 * mem[_302 + 50 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)])
            else:
                if uint8(cd[((32 * idx) + arg8 + 36)]) <= 9:
                    if not cd[((32 * idx) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if _290 and cd[((32 * idx) + arg7 + 36)] > -1 / _290:
                        revert with 'NH{q', 17
                    if not cd[((32 * idx) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if _290 * cd[((32 * idx) + arg7 + 36)] / cd[((32 * idx) + arg7 + 36)] != _290:
                        revert with 0, 'ds-math-mul-overflow'
                    if 0 > (-1 * _290 * cd[((32 * idx) + arg7 + 36)]) - 1:
                        revert with 'NH{q', 17
                    if _290 * cd[((32 * idx) + arg7 + 36)] < 0:
                        revert with 0, 'ds-math-add-overflow'
                    if not _290 * cd[((32 * idx) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + 128] = 0 / _290 * cd[((32 * idx) + arg7 + 36)]
                else:
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 10:
                        if not cd[((32 * idx) + arg7 + 36)]:
                            if mem[_302 + 50 len 14]:
                                if False and mem[_302 + 50 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_302 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_302 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if mem[_302 + 18 len 14] and 10000 > -1 / mem[_302 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_302 + 18 len 14] / 10000 != mem[_302 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_302 + 18 len 14] > -1:
                                revert with 'NH{q', 17
                            if 10000 * mem[_302 + 18 len 14] < 10000 * mem[_302 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 10000 * mem[_302 + 18 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = 0 / 10000 * mem[_302 + 18 len 14]
                        else:
                            if _290 and cd[((32 * idx) + arg7 + 36)] > -1 / _290:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if _290 * cd[((32 * idx) + arg7 + 36)] / cd[((32 * idx) + arg7 + 36)] != _290:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_302 + 50 len 14]:
                                if mem[_302 + 18 len 14] and 10000 > -1 / mem[_302 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_302 + 18 len 14] / 10000 != mem[_302 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_302 + 18 len 14] > (-1 * _290 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_302 + 18 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_302 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_302 + 18 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + 128] = 0 / (10000 * mem[_302 + 18 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)])
                            else:
                                if _290 * cd[((32 * idx) + arg7 + 36)] and mem[_302 + 50 len 14] > -1 / _290 * cd[((32 * idx) + arg7 + 36)]:
                                    revert with 'NH{q', 17
                                if not mem[_302 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if _290 * cd[((32 * idx) + arg7 + 36)] * mem[_302 + 50 len 14] / mem[_302 + 50 len 14] != _290 * cd[((32 * idx) + arg7 + 36)]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_302 + 18 len 14] and 10000 > -1 / mem[_302 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_302 + 18 len 14] / 10000 != mem[_302 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_302 + 18 len 14] > (-1 * _290 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_302 + 18 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_302 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_302 + 18 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + 128] = _290 * cd[((32 * idx) + arg7 + 36)] * mem[_302 + 50 len 14] / (10000 * mem[_302 + 18 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)])
                    else:
                        if not cd[((32 * idx) + arg7 + 36)]:
                            if mem[_302 + 18 len 14]:
                                if False and mem[_302 + 18 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_302 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_302 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if mem[_302 + 50 len 14] and 10000 > -1 / mem[_302 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_302 + 50 len 14] / 10000 != mem[_302 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_302 + 50 len 14] > -1:
                                revert with 'NH{q', 17
                            if 10000 * mem[_302 + 50 len 14] < 10000 * mem[_302 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 10000 * mem[_302 + 50 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = 0 / 10000 * mem[_302 + 50 len 14]
                        else:
                            if _290 and cd[((32 * idx) + arg7 + 36)] > -1 / _290:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if _290 * cd[((32 * idx) + arg7 + 36)] / cd[((32 * idx) + arg7 + 36)] != _290:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_302 + 18 len 14]:
                                if mem[_302 + 50 len 14] and 10000 > -1 / mem[_302 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_302 + 50 len 14] / 10000 != mem[_302 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_302 + 50 len 14] > (-1 * _290 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_302 + 50 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_302 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_302 + 50 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + 128] = 0 / (10000 * mem[_302 + 50 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)])
                            else:
                                if _290 * cd[((32 * idx) + arg7 + 36)] and mem[_302 + 18 len 14] > -1 / _290 * cd[((32 * idx) + arg7 + 36)]:
                                    revert with 'NH{q', 17
                                if not mem[_302 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if _290 * cd[((32 * idx) + arg7 + 36)] * mem[_302 + 18 len 14] / mem[_302 + 18 len 14] != _290 * cd[((32 * idx) + arg7 + 36)]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_302 + 50 len 14] and 10000 > -1 / mem[_302 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_302 + 50 len 14] / 10000 != mem[_302 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_302 + 50 len 14] > (-1 * _290 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_302 + 50 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_302 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_302 + 50 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + 128] = _290 * cd[((32 * idx) + arg7 + 36)] * mem[_302 + 18 len 14] / (10000 * mem[_302 + 50 len 14]) + (_290 * cd[((32 * idx) + arg7 + 36)])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if arg2 >= mem[96]:
            revert with 'NH{q', 50
        if mem[(32 * arg2) + 128] < arg5:
            revert with 0, 'SWR: Insufficient AmountOut'
        mem[0] = msg.sender
        mem[32] = 1
        if bool(stor1[address(msg.sender)]) != 1:
            revert with 0, 'worker not registered'
        if 0 >= arg6.length:
            revert with 'NH{q', 50
        require cd[(arg6 + 36)] == address(cd[(arg6 + 36)])
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        _294 = mem[128]
        mem[mem[64] + 4] = address(cd[(arg6 + 36)])
        mem[mem[64] + 36] = _294
        require ext_code.size(arg3)
        call arg3.0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg6 + 36)]), _294
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _306 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_306] == bool(mem[_306])
        if bool(mem[_306]) != 1:
            revert with 0, 'SW: US_TRANSFER_FROM_FAILED'
        idx = 0
        while idx < arg2:
            if idx >= arg6.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg6 + 36)] == address(cd[((32 * idx) + arg6 + 36)])
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            _608 = mem[(32 * idx + 1) + 128]
            if idx >= arg8.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg8 + 36)] == uint8(cd[((32 * idx) + arg8 + 36)])
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= arg6.length:
                revert with 'NH{q', 50
            require cd[((32 * idx + 1) + arg6 + 36)] == address(cd[((32 * idx + 1) + arg6 + 36)])
            if uint8(cd[((32 * idx) + arg8 + 36)]) >= 2:
                if uint8(cd[((32 * idx) + arg8 + 36)]) > 9:
                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 10:
                        mem[mem[64] + 4] = 0
                        if uint8(cd[((32 * idx) + arg8 + 36)]) == 11:
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, 0, address(cd[((32 * idx + 1) + arg6 + 36)])
                        else:
                            mem[mem[64] + 36] = _608
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _608, address(cd[((32 * idx + 1) + arg6 + 36)])
                    else:
                        mem[mem[64] + 4] = _608
                        if uint8(cd[((32 * idx) + arg8 + 36)]) == 11:
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _608, 0, address(cd[((32 * idx + 1) + arg6 + 36)])
                        else:
                            mem[mem[64] + 36] = _608
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _608, _608, address(cd[((32 * idx + 1) + arg6 + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if not uint8(cd[((32 * idx) + arg8 + 36)]):
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 1:
                        _614 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_614 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_614 + 36] = 0
                        mem[_614 + 68] = 0
                        mem[_614 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_614 + 132] = 128
                        mem[_614 + 164] = mem[_614]
                        s = 0
                        while s < mem[_614]:
                            mem[_614 + s + 196] = mem[_614 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_614]) > mem[_614]:
                            mem[_614 + mem[_614] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_614], mem[_614 + 196 len ceil32(mem[_614])]
                    else:
                        _615 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_615 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_615 + 36] = 0
                        mem[_615 + 68] = _608
                        mem[_615 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_615 + 132] = 128
                        mem[_615 + 164] = mem[_615]
                        s = 0
                        while s < mem[_615]:
                            mem[_615 + s + 196] = mem[_615 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_615]) > mem[_615]:
                            mem[_615 + mem[_615] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _608, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_615], mem[_615 + 196 len ceil32(mem[_615])]
                else:
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 1:
                        _616 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_616 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_616 + 36] = _608
                        mem[_616 + 68] = 0
                        mem[_616 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_616 + 132] = 128
                        mem[_616 + 164] = mem[_616]
                        s = 0
                        while s < mem[_616]:
                            mem[_616 + s + 196] = mem[_616 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_616]) > mem[_616]:
                            mem[_616 + mem[_616] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _608, 0, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_616], mem[_616 + 196 len ceil32(mem[_616])]
                    else:
                        _617 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_617 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_617 + 36] = _608
                        mem[_617 + 68] = _608
                        mem[_617 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_617 + 132] = 128
                        mem[_617 + 164] = mem[_617]
                        s = 0
                        while s < mem[_617]:
                            mem[_617 + s + 196] = mem[_617 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_617]) > mem[_617]:
                            mem[_617 + mem[_617] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _608, _608, address(cd[((32 * idx + 1) + arg6 + 36)]), Array(len=mem[_617], data=mem[_617 + 196 len ceil32(mem[_617])])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg2 + 1] = call.data[calldata.size len 32 * arg2 + 1]
        if 0 >= arg2 + 1:
            revert with 'NH{q', 50
        mem[128] = arg4
        idx = 0
        while idx < arg2:
            if idx >= arg6.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg6 + 36)] == address(cd[((32 * idx) + arg6 + 36)])
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _291 = mem[(32 * idx) + 128]
            if idx >= arg8.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg8 + 36)] == uint8(cd[((32 * idx) + arg8 + 36)])
            if idx >= arg7.length:
                revert with 'NH{q', 50
            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
            staticcall address(cd[((32 * idx) + arg6 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _303 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_303] == mem[_303 + 18 len 14]
            require mem[_303 + 32] == mem[_303 + 50 len 14]
            require mem[_303 + 64] == mem[_303 + 92 len 4]
            if uint8(cd[((32 * idx) + arg8 + 36)]) < 2:
                if not uint8(cd[((32 * idx) + arg8 + 36)]):
                    if not cd[((32 * idx) + arg7 + 36)]:
                        if mem[_303 + 50 len 14]:
                            if False and mem[_303 + 50 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_303 + 50 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_303 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_303 + 18 len 14] and 10000 > -1 / mem[_303 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 10000 * mem[_303 + 18 len 14] / 10000 != mem[_303 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[_303 + 18 len 14] > -1:
                            revert with 'NH{q', 17
                        if 10000 * mem[_303 + 18 len 14] < 10000 * mem[_303 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 10000 * mem[_303 + 18 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + 128] = 0 / 10000 * mem[_303 + 18 len 14]
                    else:
                        if _291 and cd[((32 * idx) + arg7 + 36)] > -1 / _291:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if _291 * cd[((32 * idx) + arg7 + 36)] / cd[((32 * idx) + arg7 + 36)] != _291:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_303 + 50 len 14]:
                            if mem[_303 + 18 len 14] and 10000 > -1 / mem[_303 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_303 + 18 len 14] / 10000 != mem[_303 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_303 + 18 len 14] > (-1 * _291 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_303 + 18 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_303 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_303 + 18 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = 0 / (10000 * mem[_303 + 18 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)])
                        else:
                            if _291 * cd[((32 * idx) + arg7 + 36)] and mem[_303 + 50 len 14] > -1 / _291 * cd[((32 * idx) + arg7 + 36)]:
                                revert with 'NH{q', 17
                            if not mem[_303 + 50 len 14]:
                                revert with 'NH{q', 18
                            if _291 * cd[((32 * idx) + arg7 + 36)] * mem[_303 + 50 len 14] / mem[_303 + 50 len 14] != _291 * cd[((32 * idx) + arg7 + 36)]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_303 + 18 len 14] and 10000 > -1 / mem[_303 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_303 + 18 len 14] / 10000 != mem[_303 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_303 + 18 len 14] > (-1 * _291 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_303 + 18 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_303 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_303 + 18 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = _291 * cd[((32 * idx) + arg7 + 36)] * mem[_303 + 50 len 14] / (10000 * mem[_303 + 18 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)])
                else:
                    if not cd[((32 * idx) + arg7 + 36)]:
                        if mem[_303 + 18 len 14]:
                            if False and mem[_303 + 18 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_303 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_303 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_303 + 50 len 14] and 10000 > -1 / mem[_303 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 10000 * mem[_303 + 50 len 14] / 10000 != mem[_303 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[_303 + 50 len 14] > -1:
                            revert with 'NH{q', 17
                        if 10000 * mem[_303 + 50 len 14] < 10000 * mem[_303 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 10000 * mem[_303 + 50 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + 128] = 0 / 10000 * mem[_303 + 50 len 14]
                    else:
                        if _291 and cd[((32 * idx) + arg7 + 36)] > -1 / _291:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if _291 * cd[((32 * idx) + arg7 + 36)] / cd[((32 * idx) + arg7 + 36)] != _291:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_303 + 18 len 14]:
                            if mem[_303 + 50 len 14] and 10000 > -1 / mem[_303 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_303 + 50 len 14] / 10000 != mem[_303 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_303 + 50 len 14] > (-1 * _291 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_303 + 50 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_303 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_303 + 50 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = 0 / (10000 * mem[_303 + 50 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)])
                        else:
                            if _291 * cd[((32 * idx) + arg7 + 36)] and mem[_303 + 18 len 14] > -1 / _291 * cd[((32 * idx) + arg7 + 36)]:
                                revert with 'NH{q', 17
                            if not mem[_303 + 18 len 14]:
                                revert with 'NH{q', 18
                            if _291 * cd[((32 * idx) + arg7 + 36)] * mem[_303 + 18 len 14] / mem[_303 + 18 len 14] != _291 * cd[((32 * idx) + arg7 + 36)]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_303 + 50 len 14] and 10000 > -1 / mem[_303 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_303 + 50 len 14] / 10000 != mem[_303 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_303 + 50 len 14] > (-1 * _291 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_303 + 50 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_303 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_303 + 50 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = _291 * cd[((32 * idx) + arg7 + 36)] * mem[_303 + 18 len 14] / (10000 * mem[_303 + 50 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)])
            else:
                if uint8(cd[((32 * idx) + arg8 + 36)]) <= 9:
                    if not cd[((32 * idx) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if _291 and cd[((32 * idx) + arg7 + 36)] > -1 / _291:
                        revert with 'NH{q', 17
                    if not cd[((32 * idx) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if _291 * cd[((32 * idx) + arg7 + 36)] / cd[((32 * idx) + arg7 + 36)] != _291:
                        revert with 0, 'ds-math-mul-overflow'
                    if 0 > (-1 * _291 * cd[((32 * idx) + arg7 + 36)]) - 1:
                        revert with 'NH{q', 17
                    if _291 * cd[((32 * idx) + arg7 + 36)] < 0:
                        revert with 0, 'ds-math-add-overflow'
                    if not _291 * cd[((32 * idx) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + 128] = 0 / _291 * cd[((32 * idx) + arg7 + 36)]
                else:
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 10:
                        if not cd[((32 * idx) + arg7 + 36)]:
                            if mem[_303 + 50 len 14]:
                                if False and mem[_303 + 50 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_303 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_303 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if mem[_303 + 18 len 14] and 10000 > -1 / mem[_303 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_303 + 18 len 14] / 10000 != mem[_303 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_303 + 18 len 14] > -1:
                                revert with 'NH{q', 17
                            if 10000 * mem[_303 + 18 len 14] < 10000 * mem[_303 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 10000 * mem[_303 + 18 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = 0 / 10000 * mem[_303 + 18 len 14]
                        else:
                            if _291 and cd[((32 * idx) + arg7 + 36)] > -1 / _291:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if _291 * cd[((32 * idx) + arg7 + 36)] / cd[((32 * idx) + arg7 + 36)] != _291:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_303 + 50 len 14]:
                                if mem[_303 + 18 len 14] and 10000 > -1 / mem[_303 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_303 + 18 len 14] / 10000 != mem[_303 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_303 + 18 len 14] > (-1 * _291 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_303 + 18 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_303 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_303 + 18 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + 128] = 0 / (10000 * mem[_303 + 18 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)])
                            else:
                                if _291 * cd[((32 * idx) + arg7 + 36)] and mem[_303 + 50 len 14] > -1 / _291 * cd[((32 * idx) + arg7 + 36)]:
                                    revert with 'NH{q', 17
                                if not mem[_303 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if _291 * cd[((32 * idx) + arg7 + 36)] * mem[_303 + 50 len 14] / mem[_303 + 50 len 14] != _291 * cd[((32 * idx) + arg7 + 36)]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_303 + 18 len 14] and 10000 > -1 / mem[_303 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_303 + 18 len 14] / 10000 != mem[_303 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_303 + 18 len 14] > (-1 * _291 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_303 + 18 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_303 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_303 + 18 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + 128] = _291 * cd[((32 * idx) + arg7 + 36)] * mem[_303 + 50 len 14] / (10000 * mem[_303 + 18 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)])
                    else:
                        if not cd[((32 * idx) + arg7 + 36)]:
                            if mem[_303 + 18 len 14]:
                                if False and mem[_303 + 18 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_303 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_303 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if mem[_303 + 50 len 14] and 10000 > -1 / mem[_303 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_303 + 50 len 14] / 10000 != mem[_303 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_303 + 50 len 14] > -1:
                                revert with 'NH{q', 17
                            if 10000 * mem[_303 + 50 len 14] < 10000 * mem[_303 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 10000 * mem[_303 + 50 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = 0 / 10000 * mem[_303 + 50 len 14]
                        else:
                            if _291 and cd[((32 * idx) + arg7 + 36)] > -1 / _291:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if _291 * cd[((32 * idx) + arg7 + 36)] / cd[((32 * idx) + arg7 + 36)] != _291:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_303 + 18 len 14]:
                                if mem[_303 + 50 len 14] and 10000 > -1 / mem[_303 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_303 + 50 len 14] / 10000 != mem[_303 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_303 + 50 len 14] > (-1 * _291 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_303 + 50 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_303 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_303 + 50 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + 128] = 0 / (10000 * mem[_303 + 50 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)])
                            else:
                                if _291 * cd[((32 * idx) + arg7 + 36)] and mem[_303 + 18 len 14] > -1 / _291 * cd[((32 * idx) + arg7 + 36)]:
                                    revert with 'NH{q', 17
                                if not mem[_303 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if _291 * cd[((32 * idx) + arg7 + 36)] * mem[_303 + 18 len 14] / mem[_303 + 18 len 14] != _291 * cd[((32 * idx) + arg7 + 36)]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_303 + 50 len 14] and 10000 > -1 / mem[_303 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_303 + 50 len 14] / 10000 != mem[_303 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_303 + 50 len 14] > (-1 * _291 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_303 + 50 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_303 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_303 + 50 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + 128] = _291 * cd[((32 * idx) + arg7 + 36)] * mem[_303 + 18 len 14] / (10000 * mem[_303 + 50 len 14]) + (_291 * cd[((32 * idx) + arg7 + 36)])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if arg2 >= mem[96]:
            revert with 'NH{q', 50
        if mem[(32 * arg2) + 128] < arg5:
            revert with 0, 'SWR: Insufficient AmountOut'
        mem[0] = msg.sender
        mem[32] = 1
        if bool(stor1[address(msg.sender)]) != 1:
            revert with 0, 'worker not registered'
        if 0 >= arg6.length:
            revert with 'NH{q', 50
        require cd[(arg6 + 36)] == address(cd[(arg6 + 36)])
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        _295 = mem[128]
        mem[mem[64] + 4] = address(cd[(arg6 + 36)])
        mem[mem[64] + 36] = _295
        require ext_code.size(arg3)
        call arg3.0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg6 + 36)]), _295
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _308 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_308] == bool(mem[_308])
        if bool(mem[_308]) != 1:
            revert with 0, 'SW: US_TRANSFER_FROM_FAILED'
        idx = 0
        while idx < arg2:
            if idx >= arg6.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg6 + 36)] == address(cd[((32 * idx) + arg6 + 36)])
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            _609 = mem[(32 * idx + 1) + 128]
            if idx >= arg8.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg8 + 36)] == uint8(cd[((32 * idx) + arg8 + 36)])
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= arg6.length:
                revert with 'NH{q', 50
            require cd[((32 * idx + 1) + arg6 + 36)] == address(cd[((32 * idx + 1) + arg6 + 36)])
            if uint8(cd[((32 * idx) + arg8 + 36)]) >= 2:
                if uint8(cd[((32 * idx) + arg8 + 36)]) > 9:
                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 10:
                        mem[mem[64] + 4] = 0
                        if uint8(cd[((32 * idx) + arg8 + 36)]) == 11:
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, 0, address(cd[((32 * idx + 1) + arg6 + 36)])
                        else:
                            mem[mem[64] + 36] = _609
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _609, address(cd[((32 * idx + 1) + arg6 + 36)])
                    else:
                        mem[mem[64] + 4] = _609
                        if uint8(cd[((32 * idx) + arg8 + 36)]) == 11:
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _609, 0, address(cd[((32 * idx + 1) + arg6 + 36)])
                        else:
                            mem[mem[64] + 36] = _609
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _609, _609, address(cd[((32 * idx + 1) + arg6 + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if not uint8(cd[((32 * idx) + arg8 + 36)]):
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 1:
                        _622 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_622 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_622 + 36] = 0
                        mem[_622 + 68] = 0
                        mem[_622 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_622 + 132] = 128
                        mem[_622 + 164] = mem[_622]
                        s = 0
                        while s < mem[_622]:
                            mem[_622 + s + 196] = mem[_622 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_622]) > mem[_622]:
                            mem[_622 + mem[_622] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_622], mem[_622 + 196 len ceil32(mem[_622])]
                    else:
                        _623 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_623 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_623 + 36] = 0
                        mem[_623 + 68] = _609
                        mem[_623 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_623 + 132] = 128
                        mem[_623 + 164] = mem[_623]
                        s = 0
                        while s < mem[_623]:
                            mem[_623 + s + 196] = mem[_623 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_623]) > mem[_623]:
                            mem[_623 + mem[_623] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _609, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_623], mem[_623 + 196 len ceil32(mem[_623])]
                else:
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 1:
                        _624 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_624 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_624 + 36] = _609
                        mem[_624 + 68] = 0
                        mem[_624 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_624 + 132] = 128
                        mem[_624 + 164] = mem[_624]
                        s = 0
                        while s < mem[_624]:
                            mem[_624 + s + 196] = mem[_624 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_624]) > mem[_624]:
                            mem[_624 + mem[_624] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _609, 0, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_624], mem[_624 + 196 len ceil32(mem[_624])]
                    else:
                        _625 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_625 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_625 + 36] = _609
                        mem[_625 + 68] = _609
                        mem[_625 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_625 + 132] = 128
                        mem[_625 + 164] = mem[_625]
                        s = 0
                        while s < mem[_625]:
                            mem[_625 + s + 196] = mem[_625 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_625]) > mem[_625]:
                            mem[_625 + mem[_625] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _609, _609, address(cd[((32 * idx + 1) + arg6 + 36)]), Array(len=mem[_625], data=mem[_625 + 196 len ceil32(mem[_625])])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function swapToExact(uint256 arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, address[] arg6, uint256[] arg7, uint8[] arg8) {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require arg6 + (32 * arg6.length) + 36 <= calldata.size
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    require arg7.length <= test266151307()
    require arg7 + (32 * arg7.length) + 36 <= calldata.size
    require arg8 <= test266151307()
    require arg8 + 35 < calldata.size
    require arg8.length <= test266151307()
    require arg8 + (32 * arg8.length) + 36 <= calldata.size
    if block.timestamp > arg1:
        revert with 0, 'SWR: Deadline passed'
    if arg2 > -2:
        revert with 'NH{q', 17
    if arg2 + 1 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2 + 1
    mem[64] = (32 * arg2 + 1) + 128
    if not arg2 + 1:
        if arg2 >= arg2 + 1:
            revert with 'NH{q', 50
        mem[(32 * arg2) + 128] = arg4
        idx = arg2
        while idx > 0:
            if idx < 1:
                revert with 'NH{q', 17
            if idx - 1 >= arg6.length:
                revert with 'NH{q', 50
            require cd[((32 * idx - 1) + arg6 + 36)] == address(cd[((32 * idx - 1) + arg6 + 36)])
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _362 = mem[(32 * idx) + 128]
            if idx < 1:
                revert with 'NH{q', 17
            if idx - 1 >= arg8.length:
                revert with 'NH{q', 50
            require cd[((32 * idx - 1) + arg8 + 36)] == uint8(cd[((32 * idx - 1) + arg8 + 36)])
            if idx < 1:
                revert with 'NH{q', 17
            if idx - 1 >= arg7.length:
                revert with 'NH{q', 50
            require ext_code.size(address(cd[((32 * idx - 1) + arg6 + 36)]))
            staticcall address(cd[((32 * idx - 1) + arg6 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _376 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_376] == mem[_376 + 18 len 14]
            require mem[_376 + 32] == mem[_376 + 50 len 14]
            require mem[_376 + 64] == mem[_376 + 92 len 4]
            if uint8(cd[((32 * idx - 1) + arg8 + 36)]) < 2:
                if not uint8(cd[((32 * idx - 1) + arg8 + 36)]):
                    if not _362:
                        if mem[_376 + 50 len 14] < _362:
                            revert with 'NH{q', 17
                        if mem[_376 + 50 len 14] - _362 > mem[_376 + 50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if mem[_376 + 50 len 14] - _362 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_376 + 50 len 14] - _362:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_376 + 50 len 14] - _362:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 'NH{q', 18
                        if 0 / (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                            revert with 'NH{q', 17
                        if (0 / (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 0 / (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 'NH{q', 17
                        if idx - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx - 1) + 128] = (0 / (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                    else:
                        if mem[_376 + 18 len 14] and _362 > -1 / mem[_376 + 18 len 14]:
                            revert with 'NH{q', 17
                        if not _362:
                            revert with 'NH{q', 18
                        if mem[_376 + 18 len 14] * _362 / _362 != mem[_376 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_376 + 18 len 14] * _362 and 10000 > -1 / mem[_376 + 18 len 14] * _362:
                            revert with 'NH{q', 17
                        if 10000 * mem[_376 + 18 len 14] * _362 / 10000 != mem[_376 + 18 len 14] * _362:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_376 + 50 len 14] < _362:
                            revert with 'NH{q', 17
                        if mem[_376 + 50 len 14] - _362 > mem[_376 + 50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if mem[_376 + 50 len 14] - _362 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_376 + 50 len 14] - _362:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_376 + 50 len 14] - _362:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 'NH{q', 18
                        if 10000 * mem[_376 + 18 len 14] * _362 / (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                            revert with 'NH{q', 17
                        if (10000 * mem[_376 + 18 len 14] * _362 / (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 10000 * mem[_376 + 18 len 14] * _362 / (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 'NH{q', 17
                        if idx - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx - 1) + 128] = (10000 * mem[_376 + 18 len 14] * _362 / (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                else:
                    if not _362:
                        if mem[_376 + 18 len 14] < _362:
                            revert with 'NH{q', 17
                        if mem[_376 + 18 len 14] - _362 > mem[_376 + 18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if mem[_376 + 18 len 14] - _362 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_376 + 18 len 14] - _362:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_376 + 18 len 14] - _362:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 'NH{q', 18
                        if 0 / (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                            revert with 'NH{q', 17
                        if (0 / (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 0 / (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 'NH{q', 17
                        if idx - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx - 1) + 128] = (0 / (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                    else:
                        if mem[_376 + 50 len 14] and _362 > -1 / mem[_376 + 50 len 14]:
                            revert with 'NH{q', 17
                        if not _362:
                            revert with 'NH{q', 18
                        if mem[_376 + 50 len 14] * _362 / _362 != mem[_376 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_376 + 50 len 14] * _362 and 10000 > -1 / mem[_376 + 50 len 14] * _362:
                            revert with 'NH{q', 17
                        if 10000 * mem[_376 + 50 len 14] * _362 / 10000 != mem[_376 + 50 len 14] * _362:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_376 + 18 len 14] < _362:
                            revert with 'NH{q', 17
                        if mem[_376 + 18 len 14] - _362 > mem[_376 + 18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if mem[_376 + 18 len 14] - _362 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_376 + 18 len 14] - _362:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_376 + 18 len 14] - _362:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 'NH{q', 18
                        if 10000 * mem[_376 + 50 len 14] * _362 / (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                            revert with 'NH{q', 17
                        if (10000 * mem[_376 + 50 len 14] * _362 / (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 10000 * mem[_376 + 50 len 14] * _362 / (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 'NH{q', 17
                        if idx - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx - 1) + 128] = (10000 * mem[_376 + 50 len 14] * _362 / (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
            else:
                if uint8(cd[((32 * idx - 1) + arg8 + 36)]) <= 9:
                    if _362:
                        if False and _362 > 0:
                            revert with 'NH{q', 17
                        if not _362:
                            revert with 'NH{q', 18
                        if 0 / _362:
                            revert with 0, 'ds-math-mul-overflow'
                    if 0 < _362:
                        revert with 'NH{q', 17
                    if -_362 > 0:
                        revert with 0, 'ds-math-sub-underflow'
                    if not cd[((32 * idx - 1) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if -_362 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / -_362:
                        revert with 'NH{q', 17
                    if not cd[((32 * idx - 1) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if -1 * _362 * cd[((32 * idx - 1) + arg7 + 36)] / cd[((32 * idx - 1) + arg7 + 36)] != -_362:
                        revert with 0, 'ds-math-mul-overflow'
                    if not -1 * _362 * cd[((32 * idx - 1) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if 0 / -1 * _362 * cd[((32 * idx - 1) + arg7 + 36)] > -2:
                        revert with 'NH{q', 17
                    if (0 / -1 * _362 * cd[((32 * idx - 1) + arg7 + 36)]) + 1 < 0 / -1 * _362 * cd[((32 * idx - 1) + arg7 + 36)]:
                        revert with 0, 'ds-math-add-overflow'
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx - 1) + 128] = (0 / -1 * _362 * cd[((32 * idx - 1) + arg7 + 36)]) + 1
                else:
                    if uint8(cd[((32 * idx - 1) + arg8 + 36)]) == 10:
                        if not _362:
                            if mem[_376 + 50 len 14] < _362:
                                revert with 'NH{q', 17
                            if mem[_376 + 50 len 14] - _362 > mem[_376 + 50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if mem[_376 + 50 len 14] - _362 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_376 + 50 len 14] - _362:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_376 + 50 len 14] - _362:
                                revert with 0, 'ds-math-mul-overflow'
                            if not (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if 0 / (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                                revert with 'NH{q', 17
                            if (0 / (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 0 / (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 0, 'ds-math-add-overflow'
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx - 1) + 128] = (0 / (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                        else:
                            if mem[_376 + 18 len 14] and _362 > -1 / mem[_376 + 18 len 14]:
                                revert with 'NH{q', 17
                            if not _362:
                                revert with 'NH{q', 18
                            if mem[_376 + 18 len 14] * _362 / _362 != mem[_376 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_376 + 18 len 14] * _362 and 10000 > -1 / mem[_376 + 18 len 14] * _362:
                                revert with 'NH{q', 17
                            if 10000 * mem[_376 + 18 len 14] * _362 / 10000 != mem[_376 + 18 len 14] * _362:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_376 + 50 len 14] < _362:
                                revert with 'NH{q', 17
                            if mem[_376 + 50 len 14] - _362 > mem[_376 + 50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if mem[_376 + 50 len 14] - _362 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_376 + 50 len 14] - _362:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_376 + 50 len 14] - _362:
                                revert with 0, 'ds-math-mul-overflow'
                            if not (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if 10000 * mem[_376 + 18 len 14] * _362 / (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                                revert with 'NH{q', 17
                            if (10000 * mem[_376 + 18 len 14] * _362 / (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 10000 * mem[_376 + 18 len 14] * _362 / (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 0, 'ds-math-add-overflow'
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx - 1) + 128] = (10000 * mem[_376 + 18 len 14] * _362 / (mem[_376 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                    else:
                        if not _362:
                            if mem[_376 + 18 len 14] < _362:
                                revert with 'NH{q', 17
                            if mem[_376 + 18 len 14] - _362 > mem[_376 + 18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if mem[_376 + 18 len 14] - _362 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_376 + 18 len 14] - _362:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_376 + 18 len 14] - _362:
                                revert with 0, 'ds-math-mul-overflow'
                            if not (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if 0 / (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                                revert with 'NH{q', 17
                            if (0 / (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 0 / (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 0, 'ds-math-add-overflow'
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx - 1) + 128] = (0 / (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                        else:
                            if mem[_376 + 50 len 14] and _362 > -1 / mem[_376 + 50 len 14]:
                                revert with 'NH{q', 17
                            if not _362:
                                revert with 'NH{q', 18
                            if mem[_376 + 50 len 14] * _362 / _362 != mem[_376 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_376 + 50 len 14] * _362 and 10000 > -1 / mem[_376 + 50 len 14] * _362:
                                revert with 'NH{q', 17
                            if 10000 * mem[_376 + 50 len 14] * _362 / 10000 != mem[_376 + 50 len 14] * _362:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_376 + 18 len 14] < _362:
                                revert with 'NH{q', 17
                            if mem[_376 + 18 len 14] - _362 > mem[_376 + 18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if mem[_376 + 18 len 14] - _362 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_376 + 18 len 14] - _362:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_376 + 18 len 14] - _362:
                                revert with 0, 'ds-math-mul-overflow'
                            if not (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if 10000 * mem[_376 + 50 len 14] * _362 / (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                                revert with 'NH{q', 17
                            if (10000 * mem[_376 + 50 len 14] * _362 / (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 10000 * mem[_376 + 50 len 14] * _362 / (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 0, 'ds-math-add-overflow'
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx - 1) + 128] = (10000 * mem[_376 + 50 len 14] * _362 / (mem[_376 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_362 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if mem[128] > arg5:
            revert with 0, 'SWR: Insufficient maxIn'
        mem[0] = msg.sender
        mem[32] = 1
        if bool(stor1[address(msg.sender)]) != 1:
            revert with 0, 'worker not registered'
        if 0 >= arg6.length:
            revert with 'NH{q', 50
        require cd[(arg6 + 36)] == address(cd[(arg6 + 36)])
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        _356 = mem[128]
        mem[mem[64] + 4] = address(cd[(arg6 + 36)])
        mem[mem[64] + 36] = _356
        require ext_code.size(arg3)
        call arg3.0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg6 + 36)]), _356
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _366 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_366] == bool(mem[_366])
        if bool(mem[_366]) != 1:
            revert with 0, 'SW: US_TRANSFER_FROM_FAILED'
        idx = 0
        while idx < arg2:
            if idx >= arg6.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg6 + 36)] == address(cd[((32 * idx) + arg6 + 36)])
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            _632 = mem[(32 * idx + 1) + 128]
            if idx >= arg8.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg8 + 36)] == uint8(cd[((32 * idx) + arg8 + 36)])
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= arg6.length:
                revert with 'NH{q', 50
            require cd[((32 * idx + 1) + arg6 + 36)] == address(cd[((32 * idx + 1) + arg6 + 36)])
            if uint8(cd[((32 * idx) + arg8 + 36)]) >= 2:
                if uint8(cd[((32 * idx) + arg8 + 36)]) > 9:
                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 10:
                        mem[mem[64] + 4] = 0
                        if uint8(cd[((32 * idx) + arg8 + 36)]) == 11:
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, 0, address(cd[((32 * idx + 1) + arg6 + 36)])
                        else:
                            mem[mem[64] + 36] = _632
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _632, address(cd[((32 * idx + 1) + arg6 + 36)])
                    else:
                        mem[mem[64] + 4] = _632
                        if uint8(cd[((32 * idx) + arg8 + 36)]) == 11:
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _632, 0, address(cd[((32 * idx + 1) + arg6 + 36)])
                        else:
                            mem[mem[64] + 36] = _632
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _632, _632, address(cd[((32 * idx + 1) + arg6 + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if not uint8(cd[((32 * idx) + arg8 + 36)]):
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 1:
                        _638 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_638 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_638 + 36] = 0
                        mem[_638 + 68] = 0
                        mem[_638 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_638 + 132] = 128
                        mem[_638 + 164] = mem[_638]
                        s = 0
                        while s < mem[_638]:
                            mem[_638 + s + 196] = mem[_638 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_638]) > mem[_638]:
                            mem[_638 + mem[_638] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_638], mem[_638 + 196 len ceil32(mem[_638])]
                    else:
                        _639 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_639 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_639 + 36] = 0
                        mem[_639 + 68] = _632
                        mem[_639 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_639 + 132] = 128
                        mem[_639 + 164] = mem[_639]
                        s = 0
                        while s < mem[_639]:
                            mem[_639 + s + 196] = mem[_639 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_639]) > mem[_639]:
                            mem[_639 + mem[_639] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _632, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_639], mem[_639 + 196 len ceil32(mem[_639])]
                else:
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 1:
                        _640 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_640 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_640 + 36] = _632
                        mem[_640 + 68] = 0
                        mem[_640 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_640 + 132] = 128
                        mem[_640 + 164] = mem[_640]
                        s = 0
                        while s < mem[_640]:
                            mem[_640 + s + 196] = mem[_640 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_640]) > mem[_640]:
                            mem[_640 + mem[_640] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _632, 0, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_640], mem[_640 + 196 len ceil32(mem[_640])]
                    else:
                        _641 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_641 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_641 + 36] = _632
                        mem[_641 + 68] = _632
                        mem[_641 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_641 + 132] = 128
                        mem[_641 + 164] = mem[_641]
                        s = 0
                        while s < mem[_641]:
                            mem[_641 + s + 196] = mem[_641 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_641]) > mem[_641]:
                            mem[_641 + mem[_641] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _632, _632, address(cd[((32 * idx + 1) + arg6 + 36)]), Array(len=mem[_641], data=mem[_641 + 196 len ceil32(mem[_641])])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg2 + 1] = call.data[calldata.size len 32 * arg2 + 1]
        if arg2 >= arg2 + 1:
            revert with 'NH{q', 50
        mem[(32 * arg2) + 128] = arg4
        idx = arg2
        while idx > 0:
            if idx < 1:
                revert with 'NH{q', 17
            if idx - 1 >= arg6.length:
                revert with 'NH{q', 50
            require cd[((32 * idx - 1) + arg6 + 36)] == address(cd[((32 * idx - 1) + arg6 + 36)])
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _363 = mem[(32 * idx) + 128]
            if idx < 1:
                revert with 'NH{q', 17
            if idx - 1 >= arg8.length:
                revert with 'NH{q', 50
            require cd[((32 * idx - 1) + arg8 + 36)] == uint8(cd[((32 * idx - 1) + arg8 + 36)])
            if idx < 1:
                revert with 'NH{q', 17
            if idx - 1 >= arg7.length:
                revert with 'NH{q', 50
            require ext_code.size(address(cd[((32 * idx - 1) + arg6 + 36)]))
            staticcall address(cd[((32 * idx - 1) + arg6 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _377 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_377] == mem[_377 + 18 len 14]
            require mem[_377 + 32] == mem[_377 + 50 len 14]
            require mem[_377 + 64] == mem[_377 + 92 len 4]
            if uint8(cd[((32 * idx - 1) + arg8 + 36)]) < 2:
                if not uint8(cd[((32 * idx - 1) + arg8 + 36)]):
                    if not _363:
                        if mem[_377 + 50 len 14] < _363:
                            revert with 'NH{q', 17
                        if mem[_377 + 50 len 14] - _363 > mem[_377 + 50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if mem[_377 + 50 len 14] - _363 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_377 + 50 len 14] - _363:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_377 + 50 len 14] - _363:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 'NH{q', 18
                        if 0 / (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                            revert with 'NH{q', 17
                        if (0 / (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 0 / (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 'NH{q', 17
                        if idx - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx - 1) + 128] = (0 / (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                    else:
                        if mem[_377 + 18 len 14] and _363 > -1 / mem[_377 + 18 len 14]:
                            revert with 'NH{q', 17
                        if not _363:
                            revert with 'NH{q', 18
                        if mem[_377 + 18 len 14] * _363 / _363 != mem[_377 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_377 + 18 len 14] * _363 and 10000 > -1 / mem[_377 + 18 len 14] * _363:
                            revert with 'NH{q', 17
                        if 10000 * mem[_377 + 18 len 14] * _363 / 10000 != mem[_377 + 18 len 14] * _363:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_377 + 50 len 14] < _363:
                            revert with 'NH{q', 17
                        if mem[_377 + 50 len 14] - _363 > mem[_377 + 50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if mem[_377 + 50 len 14] - _363 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_377 + 50 len 14] - _363:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_377 + 50 len 14] - _363:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 'NH{q', 18
                        if 10000 * mem[_377 + 18 len 14] * _363 / (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                            revert with 'NH{q', 17
                        if (10000 * mem[_377 + 18 len 14] * _363 / (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 10000 * mem[_377 + 18 len 14] * _363 / (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 'NH{q', 17
                        if idx - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx - 1) + 128] = (10000 * mem[_377 + 18 len 14] * _363 / (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                else:
                    if not _363:
                        if mem[_377 + 18 len 14] < _363:
                            revert with 'NH{q', 17
                        if mem[_377 + 18 len 14] - _363 > mem[_377 + 18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if mem[_377 + 18 len 14] - _363 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_377 + 18 len 14] - _363:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_377 + 18 len 14] - _363:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 'NH{q', 18
                        if 0 / (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                            revert with 'NH{q', 17
                        if (0 / (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 0 / (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 'NH{q', 17
                        if idx - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx - 1) + 128] = (0 / (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                    else:
                        if mem[_377 + 50 len 14] and _363 > -1 / mem[_377 + 50 len 14]:
                            revert with 'NH{q', 17
                        if not _363:
                            revert with 'NH{q', 18
                        if mem[_377 + 50 len 14] * _363 / _363 != mem[_377 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_377 + 50 len 14] * _363 and 10000 > -1 / mem[_377 + 50 len 14] * _363:
                            revert with 'NH{q', 17
                        if 10000 * mem[_377 + 50 len 14] * _363 / 10000 != mem[_377 + 50 len 14] * _363:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_377 + 18 len 14] < _363:
                            revert with 'NH{q', 17
                        if mem[_377 + 18 len 14] - _363 > mem[_377 + 18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if mem[_377 + 18 len 14] - _363 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_377 + 18 len 14] - _363:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_377 + 18 len 14] - _363:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 'NH{q', 18
                        if 10000 * mem[_377 + 50 len 14] * _363 / (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                            revert with 'NH{q', 17
                        if (10000 * mem[_377 + 50 len 14] * _363 / (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 10000 * mem[_377 + 50 len 14] * _363 / (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 'NH{q', 17
                        if idx - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx - 1) + 128] = (10000 * mem[_377 + 50 len 14] * _363 / (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
            else:
                if uint8(cd[((32 * idx - 1) + arg8 + 36)]) <= 9:
                    if _363:
                        if False and _363 > 0:
                            revert with 'NH{q', 17
                        if not _363:
                            revert with 'NH{q', 18
                        if 0 / _363:
                            revert with 0, 'ds-math-mul-overflow'
                    if 0 < _363:
                        revert with 'NH{q', 17
                    if -_363 > 0:
                        revert with 0, 'ds-math-sub-underflow'
                    if not cd[((32 * idx - 1) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if -_363 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / -_363:
                        revert with 'NH{q', 17
                    if not cd[((32 * idx - 1) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if -1 * _363 * cd[((32 * idx - 1) + arg7 + 36)] / cd[((32 * idx - 1) + arg7 + 36)] != -_363:
                        revert with 0, 'ds-math-mul-overflow'
                    if not -1 * _363 * cd[((32 * idx - 1) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if 0 / -1 * _363 * cd[((32 * idx - 1) + arg7 + 36)] > -2:
                        revert with 'NH{q', 17
                    if (0 / -1 * _363 * cd[((32 * idx - 1) + arg7 + 36)]) + 1 < 0 / -1 * _363 * cd[((32 * idx - 1) + arg7 + 36)]:
                        revert with 0, 'ds-math-add-overflow'
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx - 1) + 128] = (0 / -1 * _363 * cd[((32 * idx - 1) + arg7 + 36)]) + 1
                else:
                    if uint8(cd[((32 * idx - 1) + arg8 + 36)]) == 10:
                        if not _363:
                            if mem[_377 + 50 len 14] < _363:
                                revert with 'NH{q', 17
                            if mem[_377 + 50 len 14] - _363 > mem[_377 + 50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if mem[_377 + 50 len 14] - _363 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_377 + 50 len 14] - _363:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_377 + 50 len 14] - _363:
                                revert with 0, 'ds-math-mul-overflow'
                            if not (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if 0 / (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                                revert with 'NH{q', 17
                            if (0 / (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 0 / (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 0, 'ds-math-add-overflow'
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx - 1) + 128] = (0 / (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                        else:
                            if mem[_377 + 18 len 14] and _363 > -1 / mem[_377 + 18 len 14]:
                                revert with 'NH{q', 17
                            if not _363:
                                revert with 'NH{q', 18
                            if mem[_377 + 18 len 14] * _363 / _363 != mem[_377 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_377 + 18 len 14] * _363 and 10000 > -1 / mem[_377 + 18 len 14] * _363:
                                revert with 'NH{q', 17
                            if 10000 * mem[_377 + 18 len 14] * _363 / 10000 != mem[_377 + 18 len 14] * _363:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_377 + 50 len 14] < _363:
                                revert with 'NH{q', 17
                            if mem[_377 + 50 len 14] - _363 > mem[_377 + 50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if mem[_377 + 50 len 14] - _363 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_377 + 50 len 14] - _363:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_377 + 50 len 14] - _363:
                                revert with 0, 'ds-math-mul-overflow'
                            if not (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if 10000 * mem[_377 + 18 len 14] * _363 / (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                                revert with 'NH{q', 17
                            if (10000 * mem[_377 + 18 len 14] * _363 / (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 10000 * mem[_377 + 18 len 14] * _363 / (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 0, 'ds-math-add-overflow'
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx - 1) + 128] = (10000 * mem[_377 + 18 len 14] * _363 / (mem[_377 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                    else:
                        if not _363:
                            if mem[_377 + 18 len 14] < _363:
                                revert with 'NH{q', 17
                            if mem[_377 + 18 len 14] - _363 > mem[_377 + 18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if mem[_377 + 18 len 14] - _363 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_377 + 18 len 14] - _363:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_377 + 18 len 14] - _363:
                                revert with 0, 'ds-math-mul-overflow'
                            if not (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if 0 / (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                                revert with 'NH{q', 17
                            if (0 / (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 0 / (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 0, 'ds-math-add-overflow'
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx - 1) + 128] = (0 / (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                        else:
                            if mem[_377 + 50 len 14] and _363 > -1 / mem[_377 + 50 len 14]:
                                revert with 'NH{q', 17
                            if not _363:
                                revert with 'NH{q', 18
                            if mem[_377 + 50 len 14] * _363 / _363 != mem[_377 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_377 + 50 len 14] * _363 and 10000 > -1 / mem[_377 + 50 len 14] * _363:
                                revert with 'NH{q', 17
                            if 10000 * mem[_377 + 50 len 14] * _363 / 10000 != mem[_377 + 50 len 14] * _363:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_377 + 18 len 14] < _363:
                                revert with 'NH{q', 17
                            if mem[_377 + 18 len 14] - _363 > mem[_377 + 18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if mem[_377 + 18 len 14] - _363 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_377 + 18 len 14] - _363:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_377 + 18 len 14] - _363:
                                revert with 0, 'ds-math-mul-overflow'
                            if not (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if 10000 * mem[_377 + 50 len 14] * _363 / (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                                revert with 'NH{q', 17
                            if (10000 * mem[_377 + 50 len 14] * _363 / (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 10000 * mem[_377 + 50 len 14] * _363 / (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 0, 'ds-math-add-overflow'
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx - 1) + 128] = (10000 * mem[_377 + 50 len 14] * _363 / (mem[_377 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_363 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if mem[128] > arg5:
            revert with 0, 'SWR: Insufficient maxIn'
        mem[0] = msg.sender
        mem[32] = 1
        if bool(stor1[address(msg.sender)]) != 1:
            revert with 0, 'worker not registered'
        if 0 >= arg6.length:
            revert with 'NH{q', 50
        require cd[(arg6 + 36)] == address(cd[(arg6 + 36)])
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        _357 = mem[128]
        mem[mem[64] + 4] = address(cd[(arg6 + 36)])
        mem[mem[64] + 36] = _357
        require ext_code.size(arg3)
        call arg3.0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg6 + 36)]), _357
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _367 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_367] == bool(mem[_367])
        if bool(mem[_367]) != 1:
            revert with 0, 'SW: US_TRANSFER_FROM_FAILED'
        idx = 0
        while idx < arg2:
            if idx >= arg6.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg6 + 36)] == address(cd[((32 * idx) + arg6 + 36)])
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            _633 = mem[(32 * idx + 1) + 128]
            if idx >= arg8.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg8 + 36)] == uint8(cd[((32 * idx) + arg8 + 36)])
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= arg6.length:
                revert with 'NH{q', 50
            require cd[((32 * idx + 1) + arg6 + 36)] == address(cd[((32 * idx + 1) + arg6 + 36)])
            if uint8(cd[((32 * idx) + arg8 + 36)]) >= 2:
                if uint8(cd[((32 * idx) + arg8 + 36)]) > 9:
                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 10:
                        mem[mem[64] + 4] = 0
                        if uint8(cd[((32 * idx) + arg8 + 36)]) == 11:
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, 0, address(cd[((32 * idx + 1) + arg6 + 36)])
                        else:
                            mem[mem[64] + 36] = _633
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _633, address(cd[((32 * idx + 1) + arg6 + 36)])
                    else:
                        mem[mem[64] + 4] = _633
                        if uint8(cd[((32 * idx) + arg8 + 36)]) == 11:
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _633, 0, address(cd[((32 * idx + 1) + arg6 + 36)])
                        else:
                            mem[mem[64] + 36] = _633
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _633, _633, address(cd[((32 * idx + 1) + arg6 + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if not uint8(cd[((32 * idx) + arg8 + 36)]):
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 1:
                        _646 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_646 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_646 + 36] = 0
                        mem[_646 + 68] = 0
                        mem[_646 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_646 + 132] = 128
                        mem[_646 + 164] = mem[_646]
                        s = 0
                        while s < mem[_646]:
                            mem[_646 + s + 196] = mem[_646 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_646]) > mem[_646]:
                            mem[_646 + mem[_646] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_646], mem[_646 + 196 len ceil32(mem[_646])]
                    else:
                        _647 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_647 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_647 + 36] = 0
                        mem[_647 + 68] = _633
                        mem[_647 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_647 + 132] = 128
                        mem[_647 + 164] = mem[_647]
                        s = 0
                        while s < mem[_647]:
                            mem[_647 + s + 196] = mem[_647 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_647]) > mem[_647]:
                            mem[_647 + mem[_647] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _633, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_647], mem[_647 + 196 len ceil32(mem[_647])]
                else:
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 1:
                        _648 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_648 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_648 + 36] = _633
                        mem[_648 + 68] = 0
                        mem[_648 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_648 + 132] = 128
                        mem[_648 + 164] = mem[_648]
                        s = 0
                        while s < mem[_648]:
                            mem[_648 + s + 196] = mem[_648 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_648]) > mem[_648]:
                            mem[_648 + mem[_648] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _633, 0, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_648], mem[_648 + 196 len ceil32(mem[_648])]
                    else:
                        _649 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_649 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_649 + 36] = _633
                        mem[_649 + 68] = _633
                        mem[_649 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_649 + 132] = 128
                        mem[_649 + 164] = mem[_649]
                        s = 0
                        while s < mem[_649]:
                            mem[_649 + s + 196] = mem[_649 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_649]) > mem[_649]:
                            mem[_649 + mem[_649] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _633, _633, address(cd[((32 * idx + 1) + arg6 + 36)]), Array(len=mem[_649], data=mem[_649 + 196 len ceil32(mem[_649])])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}

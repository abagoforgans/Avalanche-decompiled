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

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'get off dude'
    stor0 = arg1
}

function removeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'get off dude'
    stor2[address(arg1)] = 0
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

function removeWorkers(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'get off dude'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + arg1 + 36)])] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function registerWorkers(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'get off dude'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function removeAddresses(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'get off dude'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + arg1 + 36)])] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function registerAddresses(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'get off dude'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sendTokenToRegisteredAddress(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'worker not registered'
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
    mem[0] = msg.sender
    mem[32] = 1
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'worker not registered'
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
            _276 = mem[(32 * idx) + 128]
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
            _289 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_289] == mem[_289 + 18 len 14]
            require mem[_289 + 32] == mem[_289 + 50 len 14]
            require mem[_289 + 64] == mem[_289 + 92 len 4]
            if uint8(cd[((32 * idx) + arg8 + 36)]) < 2:
                if not uint8(cd[((32 * idx) + arg8 + 36)]):
                    if not cd[((32 * idx) + arg7 + 36)]:
                        if mem[_289 + 50 len 14]:
                            if False and mem[_289 + 50 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_289 + 50 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_289 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_289 + 18 len 14] and 10000 > -1 / mem[_289 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 10000 * mem[_289 + 18 len 14] / 10000 != mem[_289 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[_289 + 18 len 14] > -1:
                            revert with 'NH{q', 17
                        if 10000 * mem[_289 + 18 len 14] < 10000 * mem[_289 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 10000 * mem[_289 + 18 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + 128] = 0 / 10000 * mem[_289 + 18 len 14]
                    else:
                        if _276 and cd[((32 * idx) + arg7 + 36)] > -1 / _276:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if _276 * cd[((32 * idx) + arg7 + 36)] / cd[((32 * idx) + arg7 + 36)] != _276:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_289 + 50 len 14]:
                            if mem[_289 + 18 len 14] and 10000 > -1 / mem[_289 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_289 + 18 len 14] / 10000 != mem[_289 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_289 + 18 len 14] > (-1 * _276 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_289 + 18 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_289 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_289 + 18 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = 0 / (10000 * mem[_289 + 18 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)])
                        else:
                            if _276 * cd[((32 * idx) + arg7 + 36)] and mem[_289 + 50 len 14] > -1 / _276 * cd[((32 * idx) + arg7 + 36)]:
                                revert with 'NH{q', 17
                            if not mem[_289 + 50 len 14]:
                                revert with 'NH{q', 18
                            if _276 * cd[((32 * idx) + arg7 + 36)] * mem[_289 + 50 len 14] / mem[_289 + 50 len 14] != _276 * cd[((32 * idx) + arg7 + 36)]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_289 + 18 len 14] and 10000 > -1 / mem[_289 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_289 + 18 len 14] / 10000 != mem[_289 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_289 + 18 len 14] > (-1 * _276 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_289 + 18 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_289 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_289 + 18 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = _276 * cd[((32 * idx) + arg7 + 36)] * mem[_289 + 50 len 14] / (10000 * mem[_289 + 18 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)])
                else:
                    if not cd[((32 * idx) + arg7 + 36)]:
                        if mem[_289 + 18 len 14]:
                            if False and mem[_289 + 18 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_289 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_289 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_289 + 50 len 14] and 10000 > -1 / mem[_289 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 10000 * mem[_289 + 50 len 14] / 10000 != mem[_289 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[_289 + 50 len 14] > -1:
                            revert with 'NH{q', 17
                        if 10000 * mem[_289 + 50 len 14] < 10000 * mem[_289 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 10000 * mem[_289 + 50 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + 128] = 0 / 10000 * mem[_289 + 50 len 14]
                    else:
                        if _276 and cd[((32 * idx) + arg7 + 36)] > -1 / _276:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if _276 * cd[((32 * idx) + arg7 + 36)] / cd[((32 * idx) + arg7 + 36)] != _276:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_289 + 18 len 14]:
                            if mem[_289 + 50 len 14] and 10000 > -1 / mem[_289 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_289 + 50 len 14] / 10000 != mem[_289 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_289 + 50 len 14] > (-1 * _276 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_289 + 50 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_289 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_289 + 50 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = 0 / (10000 * mem[_289 + 50 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)])
                        else:
                            if _276 * cd[((32 * idx) + arg7 + 36)] and mem[_289 + 18 len 14] > -1 / _276 * cd[((32 * idx) + arg7 + 36)]:
                                revert with 'NH{q', 17
                            if not mem[_289 + 18 len 14]:
                                revert with 'NH{q', 18
                            if _276 * cd[((32 * idx) + arg7 + 36)] * mem[_289 + 18 len 14] / mem[_289 + 18 len 14] != _276 * cd[((32 * idx) + arg7 + 36)]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_289 + 50 len 14] and 10000 > -1 / mem[_289 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_289 + 50 len 14] / 10000 != mem[_289 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_289 + 50 len 14] > (-1 * _276 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_289 + 50 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_289 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_289 + 50 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = _276 * cd[((32 * idx) + arg7 + 36)] * mem[_289 + 18 len 14] / (10000 * mem[_289 + 50 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)])
            else:
                if uint8(cd[((32 * idx) + arg8 + 36)]) <= 9:
                    if not cd[((32 * idx) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if _276 and cd[((32 * idx) + arg7 + 36)] > -1 / _276:
                        revert with 'NH{q', 17
                    if not cd[((32 * idx) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if _276 * cd[((32 * idx) + arg7 + 36)] / cd[((32 * idx) + arg7 + 36)] != _276:
                        revert with 0, 'ds-math-mul-overflow'
                    if 0 > (-1 * _276 * cd[((32 * idx) + arg7 + 36)]) - 1:
                        revert with 'NH{q', 17
                    if _276 * cd[((32 * idx) + arg7 + 36)] < 0:
                        revert with 0, 'ds-math-add-overflow'
                    if not _276 * cd[((32 * idx) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + 128] = 0 / _276 * cd[((32 * idx) + arg7 + 36)]
                else:
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 10:
                        if not cd[((32 * idx) + arg7 + 36)]:
                            if mem[_289 + 50 len 14]:
                                if False and mem[_289 + 50 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_289 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_289 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if mem[_289 + 18 len 14] and 10000 > -1 / mem[_289 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_289 + 18 len 14] / 10000 != mem[_289 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_289 + 18 len 14] > -1:
                                revert with 'NH{q', 17
                            if 10000 * mem[_289 + 18 len 14] < 10000 * mem[_289 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 10000 * mem[_289 + 18 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = 0 / 10000 * mem[_289 + 18 len 14]
                        else:
                            if _276 and cd[((32 * idx) + arg7 + 36)] > -1 / _276:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if _276 * cd[((32 * idx) + arg7 + 36)] / cd[((32 * idx) + arg7 + 36)] != _276:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_289 + 50 len 14]:
                                if mem[_289 + 18 len 14] and 10000 > -1 / mem[_289 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_289 + 18 len 14] / 10000 != mem[_289 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_289 + 18 len 14] > (-1 * _276 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_289 + 18 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_289 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_289 + 18 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + 128] = 0 / (10000 * mem[_289 + 18 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)])
                            else:
                                if _276 * cd[((32 * idx) + arg7 + 36)] and mem[_289 + 50 len 14] > -1 / _276 * cd[((32 * idx) + arg7 + 36)]:
                                    revert with 'NH{q', 17
                                if not mem[_289 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if _276 * cd[((32 * idx) + arg7 + 36)] * mem[_289 + 50 len 14] / mem[_289 + 50 len 14] != _276 * cd[((32 * idx) + arg7 + 36)]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_289 + 18 len 14] and 10000 > -1 / mem[_289 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_289 + 18 len 14] / 10000 != mem[_289 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_289 + 18 len 14] > (-1 * _276 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_289 + 18 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_289 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_289 + 18 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + 128] = _276 * cd[((32 * idx) + arg7 + 36)] * mem[_289 + 50 len 14] / (10000 * mem[_289 + 18 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)])
                    else:
                        if not cd[((32 * idx) + arg7 + 36)]:
                            if mem[_289 + 18 len 14]:
                                if False and mem[_289 + 18 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_289 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_289 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if mem[_289 + 50 len 14] and 10000 > -1 / mem[_289 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_289 + 50 len 14] / 10000 != mem[_289 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_289 + 50 len 14] > -1:
                                revert with 'NH{q', 17
                            if 10000 * mem[_289 + 50 len 14] < 10000 * mem[_289 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 10000 * mem[_289 + 50 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = 0 / 10000 * mem[_289 + 50 len 14]
                        else:
                            if _276 and cd[((32 * idx) + arg7 + 36)] > -1 / _276:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if _276 * cd[((32 * idx) + arg7 + 36)] / cd[((32 * idx) + arg7 + 36)] != _276:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_289 + 18 len 14]:
                                if mem[_289 + 50 len 14] and 10000 > -1 / mem[_289 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_289 + 50 len 14] / 10000 != mem[_289 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_289 + 50 len 14] > (-1 * _276 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_289 + 50 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_289 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_289 + 50 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + 128] = 0 / (10000 * mem[_289 + 50 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)])
                            else:
                                if _276 * cd[((32 * idx) + arg7 + 36)] and mem[_289 + 18 len 14] > -1 / _276 * cd[((32 * idx) + arg7 + 36)]:
                                    revert with 'NH{q', 17
                                if not mem[_289 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if _276 * cd[((32 * idx) + arg7 + 36)] * mem[_289 + 18 len 14] / mem[_289 + 18 len 14] != _276 * cd[((32 * idx) + arg7 + 36)]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_289 + 50 len 14] and 10000 > -1 / mem[_289 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_289 + 50 len 14] / 10000 != mem[_289 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_289 + 50 len 14] > (-1 * _276 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_289 + 50 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_289 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_289 + 50 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + 128] = _276 * cd[((32 * idx) + arg7 + 36)] * mem[_289 + 18 len 14] / (10000 * mem[_289 + 50 len 14]) + (_276 * cd[((32 * idx) + arg7 + 36)])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if arg2 >= mem[96]:
            revert with 'NH{q', 50
        if mem[(32 * arg2) + 128] < arg5:
            revert with 0, 'SWR: Insufficient AmountOut'
        if 0 >= arg6.length:
            revert with 'NH{q', 50
        require cd[(arg6 + 36)] == address(cd[(arg6 + 36)])
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        _280 = mem[128]
        mem[mem[64] + 4] = address(cd[(arg6 + 36)])
        mem[mem[64] + 36] = _280
        require ext_code.size(arg3)
        call arg3.0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg6 + 36)]), _280
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _292 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_292] == bool(mem[_292])
        if bool(mem[_292]) != 1:
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
            _594 = mem[(32 * idx + 1) + 128]
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
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args 0, 0, address(cd[((32 * idx + 1) + arg6 + 36)])
                        else:
                            mem[mem[64] + 36] = _594
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args 0, _594, address(cd[((32 * idx + 1) + arg6 + 36)])
                    else:
                        mem[mem[64] + 4] = _594
                        if uint8(cd[((32 * idx) + arg8 + 36)]) == 11:
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _594, 0, address(cd[((32 * idx + 1) + arg6 + 36)])
                        else:
                            mem[mem[64] + 36] = _594
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _594, _594, address(cd[((32 * idx + 1) + arg6 + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if not uint8(cd[((32 * idx) + arg8 + 36)]):
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 1:
                        _600 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_600 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_600 + 36] = 0
                        mem[_600 + 68] = 0
                        mem[_600 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_600 + 132] = 128
                        mem[_600 + 164] = mem[_600]
                        s = 0
                        while s < mem[_600]:
                            mem[_600 + s + 196] = mem[_600 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_600]) > mem[_600]:
                            mem[_600 + mem[_600] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_600], mem[_600 + 196 len ceil32(mem[_600])]
                    else:
                        _601 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_601 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_601 + 36] = 0
                        mem[_601 + 68] = _594
                        mem[_601 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_601 + 132] = 128
                        mem[_601 + 164] = mem[_601]
                        s = 0
                        while s < mem[_601]:
                            mem[_601 + s + 196] = mem[_601 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_601]) > mem[_601]:
                            mem[_601 + mem[_601] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _594, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_601], mem[_601 + 196 len ceil32(mem[_601])]
                else:
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 1:
                        _602 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_602 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_602 + 36] = _594
                        mem[_602 + 68] = 0
                        mem[_602 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_602 + 132] = 128
                        mem[_602 + 164] = mem[_602]
                        s = 0
                        while s < mem[_602]:
                            mem[_602 + s + 196] = mem[_602 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_602]) > mem[_602]:
                            mem[_602 + mem[_602] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _594, 0, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_602], mem[_602 + 196 len ceil32(mem[_602])]
                    else:
                        _603 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_603 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_603 + 36] = _594
                        mem[_603 + 68] = _594
                        mem[_603 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_603 + 132] = 128
                        mem[_603 + 164] = mem[_603]
                        s = 0
                        while s < mem[_603]:
                            mem[_603 + s + 196] = mem[_603 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_603]) > mem[_603]:
                            mem[_603 + mem[_603] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _594, _594, address(cd[((32 * idx + 1) + arg6 + 36)]), Array(len=mem[_603], data=mem[_603 + 196 len ceil32(mem[_603])])
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
            _277 = mem[(32 * idx) + 128]
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
            _291 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_291] == mem[_291 + 18 len 14]
            require mem[_291 + 32] == mem[_291 + 50 len 14]
            require mem[_291 + 64] == mem[_291 + 92 len 4]
            if uint8(cd[((32 * idx) + arg8 + 36)]) < 2:
                if not uint8(cd[((32 * idx) + arg8 + 36)]):
                    if not cd[((32 * idx) + arg7 + 36)]:
                        if mem[_291 + 50 len 14]:
                            if False and mem[_291 + 50 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_291 + 50 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_291 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_291 + 18 len 14] and 10000 > -1 / mem[_291 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 10000 * mem[_291 + 18 len 14] / 10000 != mem[_291 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[_291 + 18 len 14] > -1:
                            revert with 'NH{q', 17
                        if 10000 * mem[_291 + 18 len 14] < 10000 * mem[_291 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 10000 * mem[_291 + 18 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + 128] = 0 / 10000 * mem[_291 + 18 len 14]
                    else:
                        if _277 and cd[((32 * idx) + arg7 + 36)] > -1 / _277:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if _277 * cd[((32 * idx) + arg7 + 36)] / cd[((32 * idx) + arg7 + 36)] != _277:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_291 + 50 len 14]:
                            if mem[_291 + 18 len 14] and 10000 > -1 / mem[_291 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_291 + 18 len 14] / 10000 != mem[_291 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_291 + 18 len 14] > (-1 * _277 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_291 + 18 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_291 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_291 + 18 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = 0 / (10000 * mem[_291 + 18 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)])
                        else:
                            if _277 * cd[((32 * idx) + arg7 + 36)] and mem[_291 + 50 len 14] > -1 / _277 * cd[((32 * idx) + arg7 + 36)]:
                                revert with 'NH{q', 17
                            if not mem[_291 + 50 len 14]:
                                revert with 'NH{q', 18
                            if _277 * cd[((32 * idx) + arg7 + 36)] * mem[_291 + 50 len 14] / mem[_291 + 50 len 14] != _277 * cd[((32 * idx) + arg7 + 36)]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_291 + 18 len 14] and 10000 > -1 / mem[_291 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_291 + 18 len 14] / 10000 != mem[_291 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_291 + 18 len 14] > (-1 * _277 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_291 + 18 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_291 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_291 + 18 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = _277 * cd[((32 * idx) + arg7 + 36)] * mem[_291 + 50 len 14] / (10000 * mem[_291 + 18 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)])
                else:
                    if not cd[((32 * idx) + arg7 + 36)]:
                        if mem[_291 + 18 len 14]:
                            if False and mem[_291 + 18 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_291 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_291 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_291 + 50 len 14] and 10000 > -1 / mem[_291 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 10000 * mem[_291 + 50 len 14] / 10000 != mem[_291 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[_291 + 50 len 14] > -1:
                            revert with 'NH{q', 17
                        if 10000 * mem[_291 + 50 len 14] < 10000 * mem[_291 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 10000 * mem[_291 + 50 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + 128] = 0 / 10000 * mem[_291 + 50 len 14]
                    else:
                        if _277 and cd[((32 * idx) + arg7 + 36)] > -1 / _277:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if _277 * cd[((32 * idx) + arg7 + 36)] / cd[((32 * idx) + arg7 + 36)] != _277:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_291 + 18 len 14]:
                            if mem[_291 + 50 len 14] and 10000 > -1 / mem[_291 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_291 + 50 len 14] / 10000 != mem[_291 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_291 + 50 len 14] > (-1 * _277 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_291 + 50 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_291 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_291 + 50 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = 0 / (10000 * mem[_291 + 50 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)])
                        else:
                            if _277 * cd[((32 * idx) + arg7 + 36)] and mem[_291 + 18 len 14] > -1 / _277 * cd[((32 * idx) + arg7 + 36)]:
                                revert with 'NH{q', 17
                            if not mem[_291 + 18 len 14]:
                                revert with 'NH{q', 18
                            if _277 * cd[((32 * idx) + arg7 + 36)] * mem[_291 + 18 len 14] / mem[_291 + 18 len 14] != _277 * cd[((32 * idx) + arg7 + 36)]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_291 + 50 len 14] and 10000 > -1 / mem[_291 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_291 + 50 len 14] / 10000 != mem[_291 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_291 + 50 len 14] > (-1 * _277 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_291 + 50 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_291 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_291 + 50 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = _277 * cd[((32 * idx) + arg7 + 36)] * mem[_291 + 18 len 14] / (10000 * mem[_291 + 50 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)])
            else:
                if uint8(cd[((32 * idx) + arg8 + 36)]) <= 9:
                    if not cd[((32 * idx) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if _277 and cd[((32 * idx) + arg7 + 36)] > -1 / _277:
                        revert with 'NH{q', 17
                    if not cd[((32 * idx) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if _277 * cd[((32 * idx) + arg7 + 36)] / cd[((32 * idx) + arg7 + 36)] != _277:
                        revert with 0, 'ds-math-mul-overflow'
                    if 0 > (-1 * _277 * cd[((32 * idx) + arg7 + 36)]) - 1:
                        revert with 'NH{q', 17
                    if _277 * cd[((32 * idx) + arg7 + 36)] < 0:
                        revert with 0, 'ds-math-add-overflow'
                    if not _277 * cd[((32 * idx) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + 128] = 0 / _277 * cd[((32 * idx) + arg7 + 36)]
                else:
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 10:
                        if not cd[((32 * idx) + arg7 + 36)]:
                            if mem[_291 + 50 len 14]:
                                if False and mem[_291 + 50 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_291 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_291 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if mem[_291 + 18 len 14] and 10000 > -1 / mem[_291 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_291 + 18 len 14] / 10000 != mem[_291 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_291 + 18 len 14] > -1:
                                revert with 'NH{q', 17
                            if 10000 * mem[_291 + 18 len 14] < 10000 * mem[_291 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 10000 * mem[_291 + 18 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = 0 / 10000 * mem[_291 + 18 len 14]
                        else:
                            if _277 and cd[((32 * idx) + arg7 + 36)] > -1 / _277:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if _277 * cd[((32 * idx) + arg7 + 36)] / cd[((32 * idx) + arg7 + 36)] != _277:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_291 + 50 len 14]:
                                if mem[_291 + 18 len 14] and 10000 > -1 / mem[_291 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_291 + 18 len 14] / 10000 != mem[_291 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_291 + 18 len 14] > (-1 * _277 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_291 + 18 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_291 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_291 + 18 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + 128] = 0 / (10000 * mem[_291 + 18 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)])
                            else:
                                if _277 * cd[((32 * idx) + arg7 + 36)] and mem[_291 + 50 len 14] > -1 / _277 * cd[((32 * idx) + arg7 + 36)]:
                                    revert with 'NH{q', 17
                                if not mem[_291 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if _277 * cd[((32 * idx) + arg7 + 36)] * mem[_291 + 50 len 14] / mem[_291 + 50 len 14] != _277 * cd[((32 * idx) + arg7 + 36)]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_291 + 18 len 14] and 10000 > -1 / mem[_291 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_291 + 18 len 14] / 10000 != mem[_291 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_291 + 18 len 14] > (-1 * _277 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_291 + 18 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_291 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_291 + 18 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + 128] = _277 * cd[((32 * idx) + arg7 + 36)] * mem[_291 + 50 len 14] / (10000 * mem[_291 + 18 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)])
                    else:
                        if not cd[((32 * idx) + arg7 + 36)]:
                            if mem[_291 + 18 len 14]:
                                if False and mem[_291 + 18 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_291 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_291 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if mem[_291 + 50 len 14] and 10000 > -1 / mem[_291 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_291 + 50 len 14] / 10000 != mem[_291 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_291 + 50 len 14] > -1:
                                revert with 'NH{q', 17
                            if 10000 * mem[_291 + 50 len 14] < 10000 * mem[_291 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 10000 * mem[_291 + 50 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = 0 / 10000 * mem[_291 + 50 len 14]
                        else:
                            if _277 and cd[((32 * idx) + arg7 + 36)] > -1 / _277:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if _277 * cd[((32 * idx) + arg7 + 36)] / cd[((32 * idx) + arg7 + 36)] != _277:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_291 + 18 len 14]:
                                if mem[_291 + 50 len 14] and 10000 > -1 / mem[_291 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_291 + 50 len 14] / 10000 != mem[_291 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_291 + 50 len 14] > (-1 * _277 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_291 + 50 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_291 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_291 + 50 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + 128] = 0 / (10000 * mem[_291 + 50 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)])
                            else:
                                if _277 * cd[((32 * idx) + arg7 + 36)] and mem[_291 + 18 len 14] > -1 / _277 * cd[((32 * idx) + arg7 + 36)]:
                                    revert with 'NH{q', 17
                                if not mem[_291 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if _277 * cd[((32 * idx) + arg7 + 36)] * mem[_291 + 18 len 14] / mem[_291 + 18 len 14] != _277 * cd[((32 * idx) + arg7 + 36)]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_291 + 50 len 14] and 10000 > -1 / mem[_291 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_291 + 50 len 14] / 10000 != mem[_291 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_291 + 50 len 14] > (-1 * _277 * cd[((32 * idx) + arg7 + 36)]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_291 + 50 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)]) < 10000 * mem[_291 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_291 + 50 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + 128] = _277 * cd[((32 * idx) + arg7 + 36)] * mem[_291 + 18 len 14] / (10000 * mem[_291 + 50 len 14]) + (_277 * cd[((32 * idx) + arg7 + 36)])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if arg2 >= mem[96]:
            revert with 'NH{q', 50
        if mem[(32 * arg2) + 128] < arg5:
            revert with 0, 'SWR: Insufficient AmountOut'
        if 0 >= arg6.length:
            revert with 'NH{q', 50
        require cd[(arg6 + 36)] == address(cd[(arg6 + 36)])
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        _281 = mem[128]
        mem[mem[64] + 4] = address(cd[(arg6 + 36)])
        mem[mem[64] + 36] = _281
        require ext_code.size(arg3)
        call arg3.0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg6 + 36)]), _281
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _293 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_293] == bool(mem[_293])
        if bool(mem[_293]) != 1:
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
            _595 = mem[(32 * idx + 1) + 128]
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
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args 0, 0, address(cd[((32 * idx + 1) + arg6 + 36)])
                        else:
                            mem[mem[64] + 36] = _595
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args 0, _595, address(cd[((32 * idx + 1) + arg6 + 36)])
                    else:
                        mem[mem[64] + 4] = _595
                        if uint8(cd[((32 * idx) + arg8 + 36)]) == 11:
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _595, 0, address(cd[((32 * idx + 1) + arg6 + 36)])
                        else:
                            mem[mem[64] + 36] = _595
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _595, _595, address(cd[((32 * idx + 1) + arg6 + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if not uint8(cd[((32 * idx) + arg8 + 36)]):
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 1:
                        _608 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_608 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_608 + 36] = 0
                        mem[_608 + 68] = 0
                        mem[_608 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_608 + 132] = 128
                        mem[_608 + 164] = mem[_608]
                        s = 0
                        while s < mem[_608]:
                            mem[_608 + s + 196] = mem[_608 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_608]) > mem[_608]:
                            mem[_608 + mem[_608] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_608], mem[_608 + 196 len ceil32(mem[_608])]
                    else:
                        _609 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_609 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_609 + 36] = 0
                        mem[_609 + 68] = _595
                        mem[_609 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_609 + 132] = 128
                        mem[_609 + 164] = mem[_609]
                        s = 0
                        while s < mem[_609]:
                            mem[_609 + s + 196] = mem[_609 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_609]) > mem[_609]:
                            mem[_609 + mem[_609] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _595, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_609], mem[_609 + 196 len ceil32(mem[_609])]
                else:
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 1:
                        _610 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_610 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_610 + 36] = _595
                        mem[_610 + 68] = 0
                        mem[_610 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_610 + 132] = 128
                        mem[_610 + 164] = mem[_610]
                        s = 0
                        while s < mem[_610]:
                            mem[_610 + s + 196] = mem[_610 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_610]) > mem[_610]:
                            mem[_610 + mem[_610] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _595, 0, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_610], mem[_610 + 196 len ceil32(mem[_610])]
                    else:
                        _611 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_611 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_611 + 36] = _595
                        mem[_611 + 68] = _595
                        mem[_611 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_611 + 132] = 128
                        mem[_611 + 164] = mem[_611]
                        s = 0
                        while s < mem[_611]:
                            mem[_611 + s + 196] = mem[_611 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_611]) > mem[_611]:
                            mem[_611 + mem[_611] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _595, _595, address(cd[((32 * idx + 1) + arg6 + 36)]), Array(len=mem[_611], data=mem[_611 + 196 len ceil32(mem[_611])])
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
    mem[0] = msg.sender
    mem[32] = 1
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'worker not registered'
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
            _353 = mem[(32 * idx) + 128]
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
            _368 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_368] == mem[_368 + 18 len 14]
            require mem[_368 + 32] == mem[_368 + 50 len 14]
            require mem[_368 + 64] == mem[_368 + 92 len 4]
            if uint8(cd[((32 * idx - 1) + arg8 + 36)]) < 2:
                if not uint8(cd[((32 * idx - 1) + arg8 + 36)]):
                    if not _353:
                        if mem[_368 + 50 len 14] < _353:
                            revert with 'NH{q', 17
                        if mem[_368 + 50 len 14] - _353 > mem[_368 + 50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if mem[_368 + 50 len 14] - _353 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_368 + 50 len 14] - _353:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_368 + 50 len 14] - _353:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 'NH{q', 18
                        if 0 / (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                            revert with 'NH{q', 17
                        if (0 / (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 0 / (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 'NH{q', 17
                        if idx - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx - 1) + 128] = (0 / (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                    else:
                        if mem[_368 + 18 len 14] and _353 > -1 / mem[_368 + 18 len 14]:
                            revert with 'NH{q', 17
                        if not _353:
                            revert with 'NH{q', 18
                        if mem[_368 + 18 len 14] * _353 / _353 != mem[_368 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_368 + 18 len 14] * _353 and 10000 > -1 / mem[_368 + 18 len 14] * _353:
                            revert with 'NH{q', 17
                        if 10000 * mem[_368 + 18 len 14] * _353 / 10000 != mem[_368 + 18 len 14] * _353:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_368 + 50 len 14] < _353:
                            revert with 'NH{q', 17
                        if mem[_368 + 50 len 14] - _353 > mem[_368 + 50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if mem[_368 + 50 len 14] - _353 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_368 + 50 len 14] - _353:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_368 + 50 len 14] - _353:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 'NH{q', 18
                        if 10000 * mem[_368 + 18 len 14] * _353 / (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                            revert with 'NH{q', 17
                        if (10000 * mem[_368 + 18 len 14] * _353 / (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 10000 * mem[_368 + 18 len 14] * _353 / (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 'NH{q', 17
                        if idx - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx - 1) + 128] = (10000 * mem[_368 + 18 len 14] * _353 / (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                else:
                    if not _353:
                        if mem[_368 + 18 len 14] < _353:
                            revert with 'NH{q', 17
                        if mem[_368 + 18 len 14] - _353 > mem[_368 + 18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if mem[_368 + 18 len 14] - _353 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_368 + 18 len 14] - _353:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_368 + 18 len 14] - _353:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 'NH{q', 18
                        if 0 / (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                            revert with 'NH{q', 17
                        if (0 / (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 0 / (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 'NH{q', 17
                        if idx - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx - 1) + 128] = (0 / (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                    else:
                        if mem[_368 + 50 len 14] and _353 > -1 / mem[_368 + 50 len 14]:
                            revert with 'NH{q', 17
                        if not _353:
                            revert with 'NH{q', 18
                        if mem[_368 + 50 len 14] * _353 / _353 != mem[_368 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_368 + 50 len 14] * _353 and 10000 > -1 / mem[_368 + 50 len 14] * _353:
                            revert with 'NH{q', 17
                        if 10000 * mem[_368 + 50 len 14] * _353 / 10000 != mem[_368 + 50 len 14] * _353:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_368 + 18 len 14] < _353:
                            revert with 'NH{q', 17
                        if mem[_368 + 18 len 14] - _353 > mem[_368 + 18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if mem[_368 + 18 len 14] - _353 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_368 + 18 len 14] - _353:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_368 + 18 len 14] - _353:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 'NH{q', 18
                        if 10000 * mem[_368 + 50 len 14] * _353 / (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                            revert with 'NH{q', 17
                        if (10000 * mem[_368 + 50 len 14] * _353 / (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 10000 * mem[_368 + 50 len 14] * _353 / (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 'NH{q', 17
                        if idx - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx - 1) + 128] = (10000 * mem[_368 + 50 len 14] * _353 / (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
            else:
                if uint8(cd[((32 * idx - 1) + arg8 + 36)]) <= 9:
                    if _353:
                        if False and _353 > 0:
                            revert with 'NH{q', 17
                        if not _353:
                            revert with 'NH{q', 18
                        if 0 / _353:
                            revert with 0, 'ds-math-mul-overflow'
                    if 0 < _353:
                        revert with 'NH{q', 17
                    if -_353 > 0:
                        revert with 0, 'ds-math-sub-underflow'
                    if not cd[((32 * idx - 1) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if -_353 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / -_353:
                        revert with 'NH{q', 17
                    if not cd[((32 * idx - 1) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if -1 * _353 * cd[((32 * idx - 1) + arg7 + 36)] / cd[((32 * idx - 1) + arg7 + 36)] != -_353:
                        revert with 0, 'ds-math-mul-overflow'
                    if not -1 * _353 * cd[((32 * idx - 1) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if 0 / -1 * _353 * cd[((32 * idx - 1) + arg7 + 36)] > -2:
                        revert with 'NH{q', 17
                    if (0 / -1 * _353 * cd[((32 * idx - 1) + arg7 + 36)]) + 1 < 0 / -1 * _353 * cd[((32 * idx - 1) + arg7 + 36)]:
                        revert with 0, 'ds-math-add-overflow'
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx - 1) + 128] = (0 / -1 * _353 * cd[((32 * idx - 1) + arg7 + 36)]) + 1
                else:
                    if uint8(cd[((32 * idx - 1) + arg8 + 36)]) == 10:
                        if not _353:
                            if mem[_368 + 50 len 14] < _353:
                                revert with 'NH{q', 17
                            if mem[_368 + 50 len 14] - _353 > mem[_368 + 50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if mem[_368 + 50 len 14] - _353 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_368 + 50 len 14] - _353:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_368 + 50 len 14] - _353:
                                revert with 0, 'ds-math-mul-overflow'
                            if not (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if 0 / (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                                revert with 'NH{q', 17
                            if (0 / (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 0 / (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 0, 'ds-math-add-overflow'
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx - 1) + 128] = (0 / (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                        else:
                            if mem[_368 + 18 len 14] and _353 > -1 / mem[_368 + 18 len 14]:
                                revert with 'NH{q', 17
                            if not _353:
                                revert with 'NH{q', 18
                            if mem[_368 + 18 len 14] * _353 / _353 != mem[_368 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_368 + 18 len 14] * _353 and 10000 > -1 / mem[_368 + 18 len 14] * _353:
                                revert with 'NH{q', 17
                            if 10000 * mem[_368 + 18 len 14] * _353 / 10000 != mem[_368 + 18 len 14] * _353:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_368 + 50 len 14] < _353:
                                revert with 'NH{q', 17
                            if mem[_368 + 50 len 14] - _353 > mem[_368 + 50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if mem[_368 + 50 len 14] - _353 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_368 + 50 len 14] - _353:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_368 + 50 len 14] - _353:
                                revert with 0, 'ds-math-mul-overflow'
                            if not (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if 10000 * mem[_368 + 18 len 14] * _353 / (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                                revert with 'NH{q', 17
                            if (10000 * mem[_368 + 18 len 14] * _353 / (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 10000 * mem[_368 + 18 len 14] * _353 / (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 0, 'ds-math-add-overflow'
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx - 1) + 128] = (10000 * mem[_368 + 18 len 14] * _353 / (mem[_368 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                    else:
                        if not _353:
                            if mem[_368 + 18 len 14] < _353:
                                revert with 'NH{q', 17
                            if mem[_368 + 18 len 14] - _353 > mem[_368 + 18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if mem[_368 + 18 len 14] - _353 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_368 + 18 len 14] - _353:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_368 + 18 len 14] - _353:
                                revert with 0, 'ds-math-mul-overflow'
                            if not (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if 0 / (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                                revert with 'NH{q', 17
                            if (0 / (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 0 / (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 0, 'ds-math-add-overflow'
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx - 1) + 128] = (0 / (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                        else:
                            if mem[_368 + 50 len 14] and _353 > -1 / mem[_368 + 50 len 14]:
                                revert with 'NH{q', 17
                            if not _353:
                                revert with 'NH{q', 18
                            if mem[_368 + 50 len 14] * _353 / _353 != mem[_368 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_368 + 50 len 14] * _353 and 10000 > -1 / mem[_368 + 50 len 14] * _353:
                                revert with 'NH{q', 17
                            if 10000 * mem[_368 + 50 len 14] * _353 / 10000 != mem[_368 + 50 len 14] * _353:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_368 + 18 len 14] < _353:
                                revert with 'NH{q', 17
                            if mem[_368 + 18 len 14] - _353 > mem[_368 + 18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if mem[_368 + 18 len 14] - _353 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_368 + 18 len 14] - _353:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_368 + 18 len 14] - _353:
                                revert with 0, 'ds-math-mul-overflow'
                            if not (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if 10000 * mem[_368 + 50 len 14] * _353 / (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                                revert with 'NH{q', 17
                            if (10000 * mem[_368 + 50 len 14] * _353 / (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 10000 * mem[_368 + 50 len 14] * _353 / (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 0, 'ds-math-add-overflow'
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx - 1) + 128] = (10000 * mem[_368 + 50 len 14] * _353 / (mem[_368 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_353 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if mem[128] > arg5:
            revert with 0, 'SWR: Insufficient maxIn'
        if 0 >= arg6.length:
            revert with 'NH{q', 50
        require cd[(arg6 + 36)] == address(cd[(arg6 + 36)])
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        _347 = mem[128]
        mem[mem[64] + 4] = address(cd[(arg6 + 36)])
        mem[mem[64] + 36] = _347
        require ext_code.size(arg3)
        call arg3.0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg6 + 36)]), _347
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _357 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_357] == bool(mem[_357])
        if bool(mem[_357]) != 1:
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
            _623 = mem[(32 * idx + 1) + 128]
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
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args 0, 0, address(cd[((32 * idx + 1) + arg6 + 36)])
                        else:
                            mem[mem[64] + 36] = _623
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args 0, _623, address(cd[((32 * idx + 1) + arg6 + 36)])
                    else:
                        mem[mem[64] + 4] = _623
                        if uint8(cd[((32 * idx) + arg8 + 36)]) == 11:
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _623, 0, address(cd[((32 * idx + 1) + arg6 + 36)])
                        else:
                            mem[mem[64] + 36] = _623
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _623, _623, address(cd[((32 * idx + 1) + arg6 + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if not uint8(cd[((32 * idx) + arg8 + 36)]):
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 1:
                        _629 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_629 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_629 + 36] = 0
                        mem[_629 + 68] = 0
                        mem[_629 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_629 + 132] = 128
                        mem[_629 + 164] = mem[_629]
                        s = 0
                        while s < mem[_629]:
                            mem[_629 + s + 196] = mem[_629 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_629]) > mem[_629]:
                            mem[_629 + mem[_629] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_629], mem[_629 + 196 len ceil32(mem[_629])]
                    else:
                        _630 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_630 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_630 + 36] = 0
                        mem[_630 + 68] = _623
                        mem[_630 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_630 + 132] = 128
                        mem[_630 + 164] = mem[_630]
                        s = 0
                        while s < mem[_630]:
                            mem[_630 + s + 196] = mem[_630 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_630]) > mem[_630]:
                            mem[_630 + mem[_630] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _623, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_630], mem[_630 + 196 len ceil32(mem[_630])]
                else:
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 1:
                        _631 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_631 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_631 + 36] = _623
                        mem[_631 + 68] = 0
                        mem[_631 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_631 + 132] = 128
                        mem[_631 + 164] = mem[_631]
                        s = 0
                        while s < mem[_631]:
                            mem[_631 + s + 196] = mem[_631 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_631]) > mem[_631]:
                            mem[_631 + mem[_631] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _623, 0, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_631], mem[_631 + 196 len ceil32(mem[_631])]
                    else:
                        _632 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_632 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_632 + 36] = _623
                        mem[_632 + 68] = _623
                        mem[_632 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_632 + 132] = 128
                        mem[_632 + 164] = mem[_632]
                        s = 0
                        while s < mem[_632]:
                            mem[_632 + s + 196] = mem[_632 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_632]) > mem[_632]:
                            mem[_632 + mem[_632] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _623, _623, address(cd[((32 * idx + 1) + arg6 + 36)]), Array(len=mem[_632], data=mem[_632 + 196 len ceil32(mem[_632])])
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
            _354 = mem[(32 * idx) + 128]
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
            _370 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_370] == mem[_370 + 18 len 14]
            require mem[_370 + 32] == mem[_370 + 50 len 14]
            require mem[_370 + 64] == mem[_370 + 92 len 4]
            if uint8(cd[((32 * idx - 1) + arg8 + 36)]) < 2:
                if not uint8(cd[((32 * idx - 1) + arg8 + 36)]):
                    if not _354:
                        if mem[_370 + 50 len 14] < _354:
                            revert with 'NH{q', 17
                        if mem[_370 + 50 len 14] - _354 > mem[_370 + 50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if mem[_370 + 50 len 14] - _354 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_370 + 50 len 14] - _354:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_370 + 50 len 14] - _354:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 'NH{q', 18
                        if 0 / (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                            revert with 'NH{q', 17
                        if (0 / (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 0 / (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 'NH{q', 17
                        if idx - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx - 1) + 128] = (0 / (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                    else:
                        if mem[_370 + 18 len 14] and _354 > -1 / mem[_370 + 18 len 14]:
                            revert with 'NH{q', 17
                        if not _354:
                            revert with 'NH{q', 18
                        if mem[_370 + 18 len 14] * _354 / _354 != mem[_370 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_370 + 18 len 14] * _354 and 10000 > -1 / mem[_370 + 18 len 14] * _354:
                            revert with 'NH{q', 17
                        if 10000 * mem[_370 + 18 len 14] * _354 / 10000 != mem[_370 + 18 len 14] * _354:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_370 + 50 len 14] < _354:
                            revert with 'NH{q', 17
                        if mem[_370 + 50 len 14] - _354 > mem[_370 + 50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if mem[_370 + 50 len 14] - _354 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_370 + 50 len 14] - _354:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_370 + 50 len 14] - _354:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 'NH{q', 18
                        if 10000 * mem[_370 + 18 len 14] * _354 / (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                            revert with 'NH{q', 17
                        if (10000 * mem[_370 + 18 len 14] * _354 / (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 10000 * mem[_370 + 18 len 14] * _354 / (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 'NH{q', 17
                        if idx - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx - 1) + 128] = (10000 * mem[_370 + 18 len 14] * _354 / (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                else:
                    if not _354:
                        if mem[_370 + 18 len 14] < _354:
                            revert with 'NH{q', 17
                        if mem[_370 + 18 len 14] - _354 > mem[_370 + 18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if mem[_370 + 18 len 14] - _354 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_370 + 18 len 14] - _354:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_370 + 18 len 14] - _354:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 'NH{q', 18
                        if 0 / (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                            revert with 'NH{q', 17
                        if (0 / (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 0 / (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 'NH{q', 17
                        if idx - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx - 1) + 128] = (0 / (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                    else:
                        if mem[_370 + 50 len 14] and _354 > -1 / mem[_370 + 50 len 14]:
                            revert with 'NH{q', 17
                        if not _354:
                            revert with 'NH{q', 18
                        if mem[_370 + 50 len 14] * _354 / _354 != mem[_370 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_370 + 50 len 14] * _354 and 10000 > -1 / mem[_370 + 50 len 14] * _354:
                            revert with 'NH{q', 17
                        if 10000 * mem[_370 + 50 len 14] * _354 / 10000 != mem[_370 + 50 len 14] * _354:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_370 + 18 len 14] < _354:
                            revert with 'NH{q', 17
                        if mem[_370 + 18 len 14] - _354 > mem[_370 + 18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if mem[_370 + 18 len 14] - _354 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_370 + 18 len 14] - _354:
                            revert with 'NH{q', 17
                        if not cd[((32 * idx - 1) + arg7 + 36)]:
                            revert with 'NH{q', 18
                        if (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_370 + 18 len 14] - _354:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 'NH{q', 18
                        if 10000 * mem[_370 + 50 len 14] * _354 / (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                            revert with 'NH{q', 17
                        if (10000 * mem[_370 + 50 len 14] * _354 / (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 10000 * mem[_370 + 50 len 14] * _354 / (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 'NH{q', 17
                        if idx - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx - 1) + 128] = (10000 * mem[_370 + 50 len 14] * _354 / (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
            else:
                if uint8(cd[((32 * idx - 1) + arg8 + 36)]) <= 9:
                    if _354:
                        if False and _354 > 0:
                            revert with 'NH{q', 17
                        if not _354:
                            revert with 'NH{q', 18
                        if 0 / _354:
                            revert with 0, 'ds-math-mul-overflow'
                    if 0 < _354:
                        revert with 'NH{q', 17
                    if -_354 > 0:
                        revert with 0, 'ds-math-sub-underflow'
                    if not cd[((32 * idx - 1) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if -_354 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / -_354:
                        revert with 'NH{q', 17
                    if not cd[((32 * idx - 1) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if -1 * _354 * cd[((32 * idx - 1) + arg7 + 36)] / cd[((32 * idx - 1) + arg7 + 36)] != -_354:
                        revert with 0, 'ds-math-mul-overflow'
                    if not -1 * _354 * cd[((32 * idx - 1) + arg7 + 36)]:
                        revert with 'NH{q', 18
                    if 0 / -1 * _354 * cd[((32 * idx - 1) + arg7 + 36)] > -2:
                        revert with 'NH{q', 17
                    if (0 / -1 * _354 * cd[((32 * idx - 1) + arg7 + 36)]) + 1 < 0 / -1 * _354 * cd[((32 * idx - 1) + arg7 + 36)]:
                        revert with 0, 'ds-math-add-overflow'
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx - 1) + 128] = (0 / -1 * _354 * cd[((32 * idx - 1) + arg7 + 36)]) + 1
                else:
                    if uint8(cd[((32 * idx - 1) + arg8 + 36)]) == 10:
                        if not _354:
                            if mem[_370 + 50 len 14] < _354:
                                revert with 'NH{q', 17
                            if mem[_370 + 50 len 14] - _354 > mem[_370 + 50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if mem[_370 + 50 len 14] - _354 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_370 + 50 len 14] - _354:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_370 + 50 len 14] - _354:
                                revert with 0, 'ds-math-mul-overflow'
                            if not (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if 0 / (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                                revert with 'NH{q', 17
                            if (0 / (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 0 / (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 0, 'ds-math-add-overflow'
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx - 1) + 128] = (0 / (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                        else:
                            if mem[_370 + 18 len 14] and _354 > -1 / mem[_370 + 18 len 14]:
                                revert with 'NH{q', 17
                            if not _354:
                                revert with 'NH{q', 18
                            if mem[_370 + 18 len 14] * _354 / _354 != mem[_370 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_370 + 18 len 14] * _354 and 10000 > -1 / mem[_370 + 18 len 14] * _354:
                                revert with 'NH{q', 17
                            if 10000 * mem[_370 + 18 len 14] * _354 / 10000 != mem[_370 + 18 len 14] * _354:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_370 + 50 len 14] < _354:
                                revert with 'NH{q', 17
                            if mem[_370 + 50 len 14] - _354 > mem[_370 + 50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if mem[_370 + 50 len 14] - _354 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_370 + 50 len 14] - _354:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_370 + 50 len 14] - _354:
                                revert with 0, 'ds-math-mul-overflow'
                            if not (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if 10000 * mem[_370 + 18 len 14] * _354 / (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                                revert with 'NH{q', 17
                            if (10000 * mem[_370 + 18 len 14] * _354 / (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 10000 * mem[_370 + 18 len 14] * _354 / (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 0, 'ds-math-add-overflow'
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx - 1) + 128] = (10000 * mem[_370 + 18 len 14] * _354 / (mem[_370 + 50 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                    else:
                        if not _354:
                            if mem[_370 + 18 len 14] < _354:
                                revert with 'NH{q', 17
                            if mem[_370 + 18 len 14] - _354 > mem[_370 + 18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if mem[_370 + 18 len 14] - _354 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_370 + 18 len 14] - _354:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_370 + 18 len 14] - _354:
                                revert with 0, 'ds-math-mul-overflow'
                            if not (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if 0 / (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                                revert with 'NH{q', 17
                            if (0 / (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 0 / (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 0, 'ds-math-add-overflow'
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx - 1) + 128] = (0 / (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
                        else:
                            if mem[_370 + 50 len 14] and _354 > -1 / mem[_370 + 50 len 14]:
                                revert with 'NH{q', 17
                            if not _354:
                                revert with 'NH{q', 18
                            if mem[_370 + 50 len 14] * _354 / _354 != mem[_370 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_370 + 50 len 14] * _354 and 10000 > -1 / mem[_370 + 50 len 14] * _354:
                                revert with 'NH{q', 17
                            if 10000 * mem[_370 + 50 len 14] * _354 / 10000 != mem[_370 + 50 len 14] * _354:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_370 + 18 len 14] < _354:
                                revert with 'NH{q', 17
                            if mem[_370 + 18 len 14] - _354 > mem[_370 + 18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if mem[_370 + 18 len 14] - _354 and cd[((32 * idx - 1) + arg7 + 36)] > -1 / mem[_370 + 18 len 14] - _354:
                                revert with 'NH{q', 17
                            if not cd[((32 * idx - 1) + arg7 + 36)]:
                                revert with 'NH{q', 18
                            if (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]) / cd[((32 * idx - 1) + arg7 + 36)] != mem[_370 + 18 len 14] - _354:
                                revert with 0, 'ds-math-mul-overflow'
                            if not (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 'NH{q', 18
                            if 10000 * mem[_370 + 50 len 14] * _354 / (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]) > -2:
                                revert with 'NH{q', 17
                            if (10000 * mem[_370 + 50 len 14] * _354 / (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)])) + 1 < 10000 * mem[_370 + 50 len 14] * _354 / (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)]):
                                revert with 0, 'ds-math-add-overflow'
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx - 1) + 128] = (10000 * mem[_370 + 50 len 14] * _354 / (mem[_370 + 18 len 14] * cd[((32 * idx - 1) + arg7 + 36)]) - (_354 * cd[((32 * idx - 1) + arg7 + 36)])) + 1
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if mem[128] > arg5:
            revert with 0, 'SWR: Insufficient maxIn'
        if 0 >= arg6.length:
            revert with 'NH{q', 50
        require cd[(arg6 + 36)] == address(cd[(arg6 + 36)])
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        _348 = mem[128]
        mem[mem[64] + 4] = address(cd[(arg6 + 36)])
        mem[mem[64] + 36] = _348
        require ext_code.size(arg3)
        call arg3.0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg6 + 36)]), _348
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _358 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_358] == bool(mem[_358])
        if bool(mem[_358]) != 1:
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
            _624 = mem[(32 * idx + 1) + 128]
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
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args 0, 0, address(cd[((32 * idx + 1) + arg6 + 36)])
                        else:
                            mem[mem[64] + 36] = _624
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args 0, _624, address(cd[((32 * idx + 1) + arg6 + 36)])
                    else:
                        mem[mem[64] + 4] = _624
                        if uint8(cd[((32 * idx) + arg8 + 36)]) == 11:
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _624, 0, address(cd[((32 * idx + 1) + arg6 + 36)])
                        else:
                            mem[mem[64] + 36] = _624
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + arg6 + 36)])
                            require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                            call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _624, _624, address(cd[((32 * idx + 1) + arg6 + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if not uint8(cd[((32 * idx) + arg8 + 36)]):
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 1:
                        _637 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_637 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_637 + 36] = 0
                        mem[_637 + 68] = 0
                        mem[_637 + 100] = address(cd[((32 * idx + 1) + arg6 + 36)])
                        mem[_637 + 132] = 128
                        mem[_637 + 164] = mem[_637]
                        s = 0
                        while s < mem[_637]:
                            mem[_637 + s + 196] = mem[_637 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_637]) > mem[_637]:
                            mem[_637 + mem[_637] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg6 + 36)]))
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_637], mem[_637 + 196 len ceil32(mem[_637])]
                    else:
                        _638 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_638 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_638 + 36] = 0
                        mem[_638 + 68] = _624
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
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _624, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_638], mem[_638 + 196 len ceil32(mem[_638])]
                else:
                    if uint8(cd[((32 * idx) + arg8 + 36)]) == 1:
                        _639 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_639 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_639 + 36] = _624
                        mem[_639 + 68] = 0
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
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _624, 0, address(cd[((32 * idx + 1) + arg6 + 36)]), 128, mem[_639], mem[_639 + 196 len ceil32(mem[_639])]
                    else:
                        _640 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_640 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_640 + 36] = _624
                        mem[_640 + 68] = _624
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
                        call address(cd[((32 * idx) + arg6 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _624, _624, address(cd[((32 * idx + 1) + arg6 + 36)]), Array(len=mem[_640], data=mem[_640 + 196 len ceil32(mem[_640])])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}

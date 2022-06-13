contract main {




// =====================  Runtime code  =====================


#
#  - sub_5ba3efc1(?)
#
address stor0;
mapping of uint8 stor1;
uint8 stor2;
uint8 stor2; offset 168
uint128 stor2; offset 168
address feeManagerAddress; offset 8
address coreAddress;

function paused() {
    return bool(uint8(stor2.field_0))
}

function feeManager() {
    return feeManagerAddress
}

function core() {
    return coreAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor0)
}

function sub_f5ce119e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor0
    feeManagerAddress = address(arg1)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[address(arg1)] = 1
    emit Authorized(arg1);
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[address(arg1)] = 0
    emit Unauthorized(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[stor0] = 0
    stor0 = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function pause() {
    if not uint8(stor2.field_0):
        require stor1[address(msg.sender)]
        uint8(stor2.field_0) = 1
        emit Paused()
    else:
        require stor1[address(msg.sender)]
        require stor1[address(msg.sender)]
        uint8(stor2.field_0) = 1
        emit Paused()
}

function unpause() {
    if uint8(stor2.field_0):
        require stor1[address(msg.sender)]
        uint8(stor2.field_0) = 0
        emit Unpaused()
    else:
        require stor1[address(msg.sender)]
        require stor1[address(msg.sender)]
        uint8(stor2.field_0) = 0
        emit Unpaused()
}

function sub_957064dd(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0xd09ef24100000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xd09ef241 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[96 len 4], Mask(224, 32, arg1) >> 32 >= 352
    if not bool(ceil32(return_data.size) + 448 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + 448
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] == mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 108 len 20]
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    require mem[_4 + 128] == mem[_4 + 128]
    mem[ceil32(return_data.size) + 128] = mem[_4 + 128]
    require mem[_4 + 160] == mem[_4 + 160]
    mem[ceil32(return_data.size) + 160] = mem[_4 + 160]
    require mem[_4 + 192] < 3
    mem[ceil32(return_data.size) + 192] = mem[_4 + 192]
    require mem[_4 + 224] == mem[_4 + 236 len 20]
    mem[ceil32(return_data.size) + 224] = mem[_4 + 224]
    require mem[_4 + 256] == mem[_4 + 268 len 20]
    mem[ceil32(return_data.size) + 256] = mem[_4 + 256]
    _12 = mem[_4 + 288]
    require mem[_4 + 288] <= test266151307()
    require return_data.size - _4 - mem[_4 + 288] >= 96
    if not bool(ceil32(return_data.size) + 544 <= test266151307()):
        revert with 'NH{q', 65
    require mem[_4 + mem[_4 + 288] + 96] == mem[_4 + mem[_4 + 288] + 96]
    mem[ceil32(return_data.size) + 448] = mem[_4 + mem[_4 + 288] + 96]
    _15 = mem[_4 + _12 + 128]
    require mem[_4 + _12 + 128] <= test266151307()
    require _4 + _12 + mem[_4 + _12 + 128] + 127 < return_data.size + 96
    _16 = mem[_4 + _12 + mem[_4 + _12 + 128] + 96]
    if mem[_4 + _12 + mem[_4 + _12 + 128] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[_4 + _12 + mem[_4 + _12 + 128] + 96]) + 545 > test266151307() or floor32(mem[_4 + _12 + mem[_4 + _12 + 128] + 96]) + 449 < 448:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[_4 + _12 + mem[_4 + _12 + 128] + 96]) + 545
    mem[ceil32(return_data.size) + 544] = mem[_4 + _12 + mem[_4 + _12 + 128] + 96]
    require _4 + _12 + _15 + (32 * _16) + 32 <= return_data.size
    idx = 0
    s = _4 + _12 + _15 + 128
    t = ceil32(return_data.size) + 576
    while idx < _16:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 480] = ceil32(return_data.size) + 544
    _49 = mem[_4 + _12 + 160]
    require mem[_4 + _12 + 160] <= test266151307()
    require _4 + _12 + mem[_4 + _12 + 160] + 127 < return_data.size + 96
    _50 = mem[_4 + _12 + mem[_4 + _12 + 160] + 96]
    if mem[_4 + _12 + mem[_4 + _12 + 160] + 96] > test266151307():
        revert with 'NH{q', 65
    _51 = mem[64]
    if mem[64] + floor32(mem[_4 + _12 + mem[_4 + _12 + 160] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[_4 + _12 + mem[_4 + _12 + 160] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[_4 + _12 + mem[_4 + _12 + 160] + 96]) + 1
    mem[_51] = mem[_4 + _12 + mem[_4 + _12 + 160] + 96]
    require _4 + _12 + _49 + (32 * _50) + 32 <= return_data.size
    idx = 0
    s = _4 + _12 + _49 + 128
    t = _51 + 32
    while idx < _50:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 512] = _51
    mem[ceil32(return_data.size) + 288] = ceil32(return_data.size) + 448
    require mem[_4 + 320] < 7
    mem[ceil32(return_data.size) + 320] = mem[_4 + 320]
    require mem[_4 + 352] == mem[_4 + 352]
    mem[ceil32(return_data.size) + 352] = mem[_4 + 352]
    require mem[_4 + 384] == mem[_4 + 384]
    mem[ceil32(return_data.size) + 384] = mem[_4 + 384]
    _114 = mem[_4 + 416]
    require mem[_4 + 416] <= test266151307()
    require _4 + mem[_4 + 416] + 127 < return_data.size + 96
    _115 = mem[_4 + mem[_4 + 416] + 96]
    if mem[_4 + mem[_4 + 416] + 96] > test266151307():
        revert with 'NH{q', 65
    _116 = mem[64]
    if mem[64] + ceil32(ceil32(mem[_4 + mem[_4 + 416] + 96])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_4 + mem[_4 + 416] + 96])) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + ceil32(ceil32(mem[_4 + mem[_4 + 416] + 96])) + 1
    mem[_116] = _115
    require _4 + _114 + _115 + 32 <= return_data.size
    mem[_116 + 32 len ceil32(_115)] = mem[_4 + _114 + 128 len ceil32(_115)]
    if ceil32(_115) <= _115:
        mem[ceil32(return_data.size) + 416] = _116
        _171 = mem[ceil32(return_data.size) + 480]
        if mem[mem[ceil32(return_data.size) + 480]] < 2:
            revert with 0, 'INVALID_PATH'
        if mem[mem[ceil32(return_data.size) + 480]] < 1:
            revert with 'NH{q', 17
        if mem[_51] != mem[mem[ceil32(return_data.size) + 480]] - 1:
            revert with 0, 'INVALID_PATH'
        _219 = mem[_51]
        idx = 0
        s = mem[ceil32(return_data.size) + 128]
        while idx < _219:
            if idx >= mem[_51]:
                revert with 'NH{q', 50
            _223 = mem[(32 * idx) + _51 + 32]
            if idx >= mem[_171]:
                revert with 'NH{q', 50
            _228 = mem[(32 * idx) + _171 + 32]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[_171]:
                revert with 'NH{q', 50
            _235 = mem[(32 * idx + 1) + _171 + 32]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = address(_228)
            mem[mem[64] + 68] = address(_235)
            require ext_code.size(address(_223))
            staticcall address(_223).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                    gas gas_remaining wei
                   args s, address(_228), address(_235)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _241 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_241] == mem[_241]
            if idx == -1:
                revert with 'NH{q', 17
            _219 = mem[_51]
            idx = idx + 1
            s = mem[_241]
            continue 
        mem[mem[64]] = mem[ceil32(return_data.size) + 128] + (_243 * _219)
    else:
        mem[_116 + _115 + 32] = 0
        mem[ceil32(return_data.size) + 416] = _116
        _177 = mem[ceil32(return_data.size) + 480]
        if mem[mem[ceil32(return_data.size) + 480]] < 2:
            revert with 0, 'INVALID_PATH'
        if mem[mem[ceil32(return_data.size) + 480]] < 1:
            revert with 'NH{q', 17
        if mem[_51] != mem[mem[ceil32(return_data.size) + 480]] - 1:
            revert with 0, 'INVALID_PATH'
        _220 = mem[_51]
        idx = 0
        s = mem[ceil32(return_data.size) + 128]
        while idx < _220:
            if idx >= mem[_51]:
                revert with 'NH{q', 50
            _225 = mem[(32 * idx) + _51 + 32]
            if idx >= mem[_177]:
                revert with 'NH{q', 50
            _230 = mem[(32 * idx) + _177 + 32]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[_177]:
                revert with 'NH{q', 50
            _237 = mem[(32 * idx + 1) + _177 + 32]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = address(_230)
            mem[mem[64] + 68] = address(_237)
            require ext_code.size(address(_225))
            staticcall address(_225).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                    gas gas_remaining wei
                   args s, address(_230), address(_237)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _242 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_242] == mem[_242]
            if idx == -1:
                revert with 'NH{q', 17
            _220 = mem[_51]
            idx = idx + 1
            s = mem[_242]
            continue 
        mem[mem[64]] = mem[ceil32(return_data.size) + 128] + (_244 * _220)
    return memory
      from mem[64]
       len 32
}

function sub_0f99b765(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if not uint8(stor2.field_0):
        mem[ceil32(ceil32(arg3.length)) + 97] = 0xd09ef24100000000000000000000000000000000000000000000000000000000
        mem[ceil32(ceil32(arg3.length)) + 101] = arg1
        require ext_code.size(coreAddress)
        staticcall coreAddress.0xd09ef241 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(ceil32(arg3.length)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _8 = mem[ceil32(ceil32(arg3.length)) + 97 len 4], Mask(224, 32, arg1) >> 32
        require mem[ceil32(ceil32(arg3.length)) + 97 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require return_data.size - mem[ceil32(ceil32(arg3.length)) + 97 len 4], Mask(224, 32, arg1) >> 32 >= 352
        if not bool(ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 449 <= test266151307()):
            revert with 'NH{q', 65
        mem[64] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 449
        require mem[ceil32(ceil32(arg3.length)) + mem[ceil32(ceil32(arg3.length)) + 97 len 4], Mask(224, 32, arg1) >> 32 + 97] == mem[ceil32(ceil32(arg3.length)) + mem[ceil32(ceil32(arg3.length)) + 97 len 4], Mask(224, 32, arg1) >> 32 + 109 len 20]
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97] = mem[ceil32(ceil32(arg3.length)) + mem[ceil32(ceil32(arg3.length)) + 97 len 4], Mask(224, 32, arg1) >> 32 + 97]
        require mem[ceil32(ceil32(arg3.length)) + _8 + 129] == mem[ceil32(ceil32(arg3.length)) + _8 + 129]
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 129] = mem[ceil32(ceil32(arg3.length)) + _8 + 129]
        require mem[ceil32(ceil32(arg3.length)) + _8 + 161] == mem[ceil32(ceil32(arg3.length)) + _8 + 161]
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161] = mem[ceil32(ceil32(arg3.length)) + _8 + 161]
        require mem[ceil32(ceil32(arg3.length)) + _8 + 193] < 3
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] = mem[ceil32(ceil32(arg3.length)) + _8 + 193]
        require mem[ceil32(ceil32(arg3.length)) + _8 + 225] == mem[ceil32(ceil32(arg3.length)) + _8 + 237 len 20]
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 225] = mem[ceil32(ceil32(arg3.length)) + _8 + 225]
        require mem[ceil32(ceil32(arg3.length)) + _8 + 257] == mem[ceil32(ceil32(arg3.length)) + _8 + 269 len 20]
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257] = mem[ceil32(ceil32(arg3.length)) + _8 + 257]
        _25 = mem[ceil32(ceil32(arg3.length)) + _8 + 289]
        require mem[ceil32(ceil32(arg3.length)) + _8 + 289] <= test266151307()
        require return_data.size - _8 - mem[ceil32(ceil32(arg3.length)) + _8 + 289] >= 96
        if not bool(ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 545 <= test266151307()):
            revert with 'NH{q', 65
        require mem[ceil32(ceil32(arg3.length)) + _8 + mem[ceil32(ceil32(arg3.length)) + _8 + 289] + 97] == mem[ceil32(ceil32(arg3.length)) + _8 + mem[ceil32(ceil32(arg3.length)) + _8 + 289] + 97]
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 449] = mem[ceil32(ceil32(arg3.length)) + _8 + mem[ceil32(ceil32(arg3.length)) + _8 + 289] + 97]
        _31 = mem[ceil32(ceil32(arg3.length)) + _8 + _25 + 129]
        require mem[ceil32(ceil32(arg3.length)) + _8 + _25 + 129] <= test266151307()
        require ceil32(ceil32(arg3.length)) + _8 + _25 + mem[ceil32(ceil32(arg3.length)) + _8 + _25 + 129] + 128 < ceil32(ceil32(arg3.length)) + return_data.size + 97
        _32 = mem[ceil32(ceil32(arg3.length)) + _8 + _25 + mem[ceil32(ceil32(arg3.length)) + _8 + _25 + 129] + 97]
        if mem[ceil32(ceil32(arg3.length)) + _8 + _25 + mem[ceil32(ceil32(arg3.length)) + _8 + _25 + 129] + 97] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + floor32(mem[ceil32(ceil32(arg3.length)) + _8 + _25 + mem[ceil32(ceil32(arg3.length)) + _8 + _25 + 129] + 97]) + 546 > test266151307() or floor32(mem[ceil32(ceil32(arg3.length)) + _8 + _25 + mem[ceil32(ceil32(arg3.length)) + _8 + _25 + 129] + 97]) + 449 < 448:
            revert with 'NH{q', 65
        mem[64] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + floor32(mem[ceil32(ceil32(arg3.length)) + _8 + _25 + mem[ceil32(ceil32(arg3.length)) + _8 + _25 + 129] + 97]) + 546
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 545] = mem[ceil32(ceil32(arg3.length)) + _8 + _25 + mem[ceil32(ceil32(arg3.length)) + _8 + _25 + 129] + 97]
        require _8 + _25 + _31 + (32 * _32) + 32 <= return_data.size
        idx = 0
        s = ceil32(ceil32(arg3.length)) + _8 + _25 + _31 + 129
        t = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 577
        while idx < _32:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 481] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 545
        _58 = mem[ceil32(ceil32(arg3.length)) + _8 + _25 + 161]
        require mem[ceil32(ceil32(arg3.length)) + _8 + _25 + 161] <= test266151307()
        require ceil32(ceil32(arg3.length)) + _8 + _25 + mem[ceil32(ceil32(arg3.length)) + _8 + _25 + 161] + 128 < ceil32(ceil32(arg3.length)) + return_data.size + 97
        _60 = mem[ceil32(ceil32(arg3.length)) + _8 + _25 + mem[ceil32(ceil32(arg3.length)) + _8 + _25 + 161] + 97]
        if mem[ceil32(ceil32(arg3.length)) + _8 + _25 + mem[ceil32(ceil32(arg3.length)) + _8 + _25 + 161] + 97] > test266151307():
            revert with 'NH{q', 65
        _62 = mem[64]
        if mem[64] + floor32(mem[ceil32(ceil32(arg3.length)) + _8 + _25 + mem[ceil32(ceil32(arg3.length)) + _8 + _25 + 161] + 97]) + 1 > test266151307() or mem[64] + floor32(mem[ceil32(ceil32(arg3.length)) + _8 + _25 + mem[ceil32(ceil32(arg3.length)) + _8 + _25 + 161] + 97]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[ceil32(ceil32(arg3.length)) + _8 + _25 + mem[ceil32(ceil32(arg3.length)) + _8 + _25 + 161] + 97]) + 1
        mem[_62] = mem[ceil32(ceil32(arg3.length)) + _8 + _25 + mem[ceil32(ceil32(arg3.length)) + _8 + _25 + 161] + 97]
        require _8 + _25 + _58 + (32 * _60) + 32 <= return_data.size
        idx = 0
        s = ceil32(ceil32(arg3.length)) + _8 + _25 + _58 + 129
        t = _62 + 32
        while idx < _60:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 513] = _62
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 289] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 449
        require mem[ceil32(ceil32(arg3.length)) + _8 + 321] < 7
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 321] = mem[ceil32(ceil32(arg3.length)) + _8 + 321]
        require mem[ceil32(ceil32(arg3.length)) + _8 + 353] == mem[ceil32(ceil32(arg3.length)) + _8 + 353]
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 353] = mem[ceil32(ceil32(arg3.length)) + _8 + 353]
        require mem[ceil32(ceil32(arg3.length)) + _8 + 385] == mem[ceil32(ceil32(arg3.length)) + _8 + 385]
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 385] = mem[ceil32(ceil32(arg3.length)) + _8 + 385]
        _704 = mem[ceil32(ceil32(arg3.length)) + _8 + 417]
        require mem[ceil32(ceil32(arg3.length)) + _8 + 417] <= test266151307()
        require ceil32(ceil32(arg3.length)) + _8 + mem[ceil32(ceil32(arg3.length)) + _8 + 417] + 128 < ceil32(ceil32(arg3.length)) + return_data.size + 97
        _706 = mem[ceil32(ceil32(arg3.length)) + _8 + mem[ceil32(ceil32(arg3.length)) + _8 + 417] + 97]
        if mem[ceil32(ceil32(arg3.length)) + _8 + mem[ceil32(ceil32(arg3.length)) + _8 + 417] + 97] > test266151307():
            revert with 'NH{q', 65
        _708 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg3.length)) + _8 + mem[ceil32(ceil32(arg3.length)) + _8 + 417] + 97])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg3.length)) + _8 + mem[ceil32(ceil32(arg3.length)) + _8 + 417] + 97])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg3.length)) + _8 + mem[ceil32(ceil32(arg3.length)) + _8 + 417] + 97])) + 1
        mem[_708] = mem[ceil32(ceil32(arg3.length)) + _8 + mem[ceil32(ceil32(arg3.length)) + _8 + 417] + 97]
        require _8 + _704 + _706 + 32 <= return_data.size
        mem[_708 + 32 len ceil32(_706)] = mem[ceil32(ceil32(arg3.length)) + _8 + _704 + 129 len ceil32(_706)]
        if ceil32(_706) <= _706:
            mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 417] = _708
            if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                revert with 'NH{q', 33
            if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                _1334 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                mem[mem[64]] = 0x4aaecf5400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(coreAddress)
                call coreAddress.0x4aaecf54 with:
                     gas gas_remaining wei
                    args arg1, address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1370 = mem[64]
                _1374 = mem[96]
                mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1374) <= _1374:
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1374 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < eth.balance(_1334):
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - eth.balance(_1334) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2051 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2052 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2051))
                            staticcall address(_2051).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2052)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2290 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2290] == mem[_2290]
                            if mem[_2290] < eth.balance(_1334):
                                revert with 'NH{q', 17
                            if mem[_2290] - eth.balance(_1334) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                    else:
                        _1962 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1962] = return_data.size
                        mem[_1962 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < eth.balance(_1334):
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - eth.balance(_1334) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2055 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2056 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2055))
                            staticcall address(_2055).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2056)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2291 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2291] == mem[_2291]
                            if mem[_2291] < eth.balance(_1334):
                                revert with 'NH{q', 17
                            if mem[_2291] - eth.balance(_1334) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                else:
                    mem[mem[64] + _1374] = 0
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1370 + _1374 + -mem[64] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < eth.balance(_1334):
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - eth.balance(_1334) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2117 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2118 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2117))
                            staticcall address(_2117).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2118)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2322 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2322] == mem[_2322]
                            if mem[_2322] < eth.balance(_1334):
                                revert with 'NH{q', 17
                            if mem[_2322] - eth.balance(_1334) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                    else:
                        _1978 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1978] = return_data.size
                        mem[_1978 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < eth.balance(_1334):
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - eth.balance(_1334) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2121 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2122 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2121))
                            staticcall address(_2121).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2122)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2323 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2323] == mem[_2323]
                            if mem[_2323] < eth.balance(_1334):
                                revert with 'NH{q', 17
                            if mem[_2323] - eth.balance(_1334) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
            else:
                _1335 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                _1336 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                require ext_code.size(address(_1335))
                staticcall address(_1335).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_1336)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1358 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1363 = mem[_1358]
                require mem[_1358] == mem[_1358]
                mem[mem[64]] = 0x4aaecf5400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(coreAddress)
                call coreAddress.0x4aaecf54 with:
                     gas gas_remaining wei
                    args arg1, address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1464 = mem[64]
                _1522 = mem[96]
                mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1522) <= _1522:
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1522 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < _1363:
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - _1363 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2059 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2060 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2059))
                            staticcall address(_2059).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2060)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2294 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2294] == mem[_2294]
                            if mem[_2294] < _1363:
                                revert with 'NH{q', 17
                            if mem[_2294] - _1363 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                    else:
                        _1964 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1964] = return_data.size
                        mem[_1964 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < _1363:
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - _1363 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2063 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2064 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2063))
                            staticcall address(_2063).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2064)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2295 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2295] == mem[_2295]
                            if mem[_2295] < _1363:
                                revert with 'NH{q', 17
                            if mem[_2295] - _1363 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                else:
                    mem[mem[64] + _1522] = 0
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1464 + _1522 + -mem[64] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < _1363:
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - _1363 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2127 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2128 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2127))
                            staticcall address(_2127).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2128)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2324 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2324] == mem[_2324]
                            if mem[_2324] < _1363:
                                revert with 'NH{q', 17
                            if mem[_2324] - _1363 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                    else:
                        _1979 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1979] = return_data.size
                        mem[_1979 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < _1363:
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - _1363 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2131 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2132 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2131))
                            staticcall address(_2131).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2132)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2325 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2325] == mem[_2325]
                            if mem[_2325] < _1363:
                                revert with 'NH{q', 17
                            if mem[_2325] - _1363 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
        else:
            mem[_708 + _706 + 32] = 0
            mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 417] = _708
            if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                revert with 'NH{q', 33
            if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                _1343 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                mem[mem[64]] = 0x4aaecf5400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(coreAddress)
                call coreAddress.0x4aaecf54 with:
                     gas gas_remaining wei
                    args arg1, address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1376 = mem[96]
                mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1376) <= _1376:
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1376 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < eth.balance(_1343):
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - eth.balance(_1343) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2067 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2068 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2067))
                            staticcall address(_2067).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2068)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2298 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2298] == mem[_2298]
                            if mem[_2298] < eth.balance(_1343):
                                revert with 'NH{q', 17
                            if mem[_2298] - eth.balance(_1343) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                    else:
                        _1966 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1966] = return_data.size
                        mem[_1966 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < eth.balance(_1343):
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - eth.balance(_1343) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2071 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2072 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2071))
                            staticcall address(_2071).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2072)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2299 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2299] == mem[_2299]
                            if mem[_2299] < eth.balance(_1343):
                                revert with 'NH{q', 17
                            if mem[_2299] - eth.balance(_1343) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                else:
                    mem[mem[64] + _1376] = 0
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1376 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < eth.balance(_1343):
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - eth.balance(_1343) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2137 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2138 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2137))
                            staticcall address(_2137).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2138)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2326 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2326] == mem[_2326]
                            if mem[_2326] < eth.balance(_1343):
                                revert with 'NH{q', 17
                            if mem[_2326] - eth.balance(_1343) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                    else:
                        _1980 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1980] = return_data.size
                        mem[_1980 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < eth.balance(_1343):
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - eth.balance(_1343) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2141 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2142 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2141))
                            staticcall address(_2141).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2142)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2327 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2327] == mem[_2327]
                            if mem[_2327] < eth.balance(_1343):
                                revert with 'NH{q', 17
                            if mem[_2327] - eth.balance(_1343) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
            else:
                _1344 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                _1345 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                require ext_code.size(address(_1344))
                staticcall address(_1344).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_1345)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1360 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1367 = mem[_1360]
                require mem[_1360] == mem[_1360]
                mem[mem[64]] = 0x4aaecf5400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(coreAddress)
                call coreAddress.0x4aaecf54 with:
                     gas gas_remaining wei
                    args arg1, address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1504 = mem[64]
                _1526 = mem[96]
                mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1526) <= _1526:
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1526 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < _1367:
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - _1367 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2075 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2076 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2075))
                            staticcall address(_2075).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2076)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2302 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2302] == mem[_2302]
                            if mem[_2302] < _1367:
                                revert with 'NH{q', 17
                            if mem[_2302] - _1367 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                    else:
                        _1968 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1968] = return_data.size
                        mem[_1968 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < _1367:
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - _1367 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2079 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2080 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2079))
                            staticcall address(_2079).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2080)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2303 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2303] == mem[_2303]
                            if mem[_2303] < _1367:
                                revert with 'NH{q', 17
                            if mem[_2303] - _1367 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                else:
                    mem[mem[64] + _1526] = 0
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1504 + _1526 + -mem[64] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < _1367:
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - _1367 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2147 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2148 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2147))
                            staticcall address(_2147).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2148)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2328 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2328] == mem[_2328]
                            if mem[_2328] < _1367:
                                revert with 'NH{q', 17
                            if mem[_2328] - _1367 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                    else:
                        _1981 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1981] = return_data.size
                        mem[_1981 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < _1367:
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - _1367 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2151 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2152 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2151))
                            staticcall address(_2151).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2152)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2329 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2329] == mem[_2329]
                            if mem[_2329] < _1367:
                                revert with 'NH{q', 17
                            if mem[_2329] - _1367 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
    else:
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[address(msg.sender)]
        mem[ceil32(ceil32(arg3.length)) + 97] = 0xd09ef24100000000000000000000000000000000000000000000000000000000
        mem[ceil32(ceil32(arg3.length)) + 101] = arg1
        require ext_code.size(coreAddress)
        staticcall coreAddress.0xd09ef241 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(ceil32(arg3.length)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _10 = mem[ceil32(ceil32(arg3.length)) + 97 len 4], Mask(224, 32, arg1) >> 32
        require mem[ceil32(ceil32(arg3.length)) + 97 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require return_data.size - mem[ceil32(ceil32(arg3.length)) + 97 len 4], Mask(224, 32, arg1) >> 32 >= 352
        if not bool(ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 449 <= test266151307()):
            revert with 'NH{q', 65
        mem[64] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 449
        require mem[ceil32(ceil32(arg3.length)) + mem[ceil32(ceil32(arg3.length)) + 97 len 4], Mask(224, 32, arg1) >> 32 + 97] == mem[ceil32(ceil32(arg3.length)) + mem[ceil32(ceil32(arg3.length)) + 97 len 4], Mask(224, 32, arg1) >> 32 + 109 len 20]
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97] = mem[ceil32(ceil32(arg3.length)) + mem[ceil32(ceil32(arg3.length)) + 97 len 4], Mask(224, 32, arg1) >> 32 + 97]
        require mem[ceil32(ceil32(arg3.length)) + _10 + 129] == mem[ceil32(ceil32(arg3.length)) + _10 + 129]
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 129] = mem[ceil32(ceil32(arg3.length)) + _10 + 129]
        require mem[ceil32(ceil32(arg3.length)) + _10 + 161] == mem[ceil32(ceil32(arg3.length)) + _10 + 161]
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161] = mem[ceil32(ceil32(arg3.length)) + _10 + 161]
        require mem[ceil32(ceil32(arg3.length)) + _10 + 193] < 3
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] = mem[ceil32(ceil32(arg3.length)) + _10 + 193]
        require mem[ceil32(ceil32(arg3.length)) + _10 + 225] == mem[ceil32(ceil32(arg3.length)) + _10 + 237 len 20]
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 225] = mem[ceil32(ceil32(arg3.length)) + _10 + 225]
        require mem[ceil32(ceil32(arg3.length)) + _10 + 257] == mem[ceil32(ceil32(arg3.length)) + _10 + 269 len 20]
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257] = mem[ceil32(ceil32(arg3.length)) + _10 + 257]
        _26 = mem[ceil32(ceil32(arg3.length)) + _10 + 289]
        require mem[ceil32(ceil32(arg3.length)) + _10 + 289] <= test266151307()
        require return_data.size - _10 - mem[ceil32(ceil32(arg3.length)) + _10 + 289] >= 96
        if not bool(ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 545 <= test266151307()):
            revert with 'NH{q', 65
        mem[64] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 545
        require mem[ceil32(ceil32(arg3.length)) + _10 + mem[ceil32(ceil32(arg3.length)) + _10 + 289] + 97] == mem[ceil32(ceil32(arg3.length)) + _10 + mem[ceil32(ceil32(arg3.length)) + _10 + 289] + 97]
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 449] = mem[ceil32(ceil32(arg3.length)) + _10 + mem[ceil32(ceil32(arg3.length)) + _10 + 289] + 97]
        _33 = mem[ceil32(ceil32(arg3.length)) + _10 + _26 + 129]
        require mem[ceil32(ceil32(arg3.length)) + _10 + _26 + 129] <= test266151307()
        require ceil32(ceil32(arg3.length)) + _10 + _26 + mem[ceil32(ceil32(arg3.length)) + _10 + _26 + 129] + 128 < ceil32(ceil32(arg3.length)) + return_data.size + 97
        _34 = mem[ceil32(ceil32(arg3.length)) + _10 + _26 + mem[ceil32(ceil32(arg3.length)) + _10 + _26 + 129] + 97]
        if mem[ceil32(ceil32(arg3.length)) + _10 + _26 + mem[ceil32(ceil32(arg3.length)) + _10 + _26 + 129] + 97] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + floor32(mem[ceil32(ceil32(arg3.length)) + _10 + _26 + mem[ceil32(ceil32(arg3.length)) + _10 + _26 + 129] + 97]) + 546 > test266151307() or floor32(mem[ceil32(ceil32(arg3.length)) + _10 + _26 + mem[ceil32(ceil32(arg3.length)) + _10 + _26 + 129] + 97]) + 449 < 448:
            revert with 'NH{q', 65
        mem[64] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + floor32(mem[ceil32(ceil32(arg3.length)) + _10 + _26 + mem[ceil32(ceil32(arg3.length)) + _10 + _26 + 129] + 97]) + 546
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 545] = _34
        require _10 + _26 + _33 + (32 * _34) + 32 <= return_data.size
        idx = 0
        s = ceil32(ceil32(arg3.length)) + _10 + _26 + _33 + 129
        t = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 577
        while idx < _34:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 481] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 545
        _59 = mem[ceil32(ceil32(arg3.length)) + _10 + _26 + 161]
        require mem[ceil32(ceil32(arg3.length)) + _10 + _26 + 161] <= test266151307()
        require ceil32(ceil32(arg3.length)) + _10 + _26 + mem[ceil32(ceil32(arg3.length)) + _10 + _26 + 161] + 128 < ceil32(ceil32(arg3.length)) + return_data.size + 97
        _61 = mem[ceil32(ceil32(arg3.length)) + _10 + _26 + mem[ceil32(ceil32(arg3.length)) + _10 + _26 + 161] + 97]
        if mem[ceil32(ceil32(arg3.length)) + _10 + _26 + mem[ceil32(ceil32(arg3.length)) + _10 + _26 + 161] + 97] > test266151307():
            revert with 'NH{q', 65
        _63 = mem[64]
        if mem[64] + floor32(mem[ceil32(ceil32(arg3.length)) + _10 + _26 + mem[ceil32(ceil32(arg3.length)) + _10 + _26 + 161] + 97]) + 1 > test266151307() or mem[64] + floor32(mem[ceil32(ceil32(arg3.length)) + _10 + _26 + mem[ceil32(ceil32(arg3.length)) + _10 + _26 + 161] + 97]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[ceil32(ceil32(arg3.length)) + _10 + _26 + mem[ceil32(ceil32(arg3.length)) + _10 + _26 + 161] + 97]) + 1
        mem[_63] = _61
        require _10 + _26 + _59 + (32 * _61) + 32 <= return_data.size
        idx = 0
        s = ceil32(ceil32(arg3.length)) + _10 + _26 + _59 + 129
        t = _63 + 32
        while idx < _61:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 513] = _63
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 289] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 449
        require mem[ceil32(ceil32(arg3.length)) + _10 + 321] < 7
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 321] = mem[ceil32(ceil32(arg3.length)) + _10 + 321]
        require mem[ceil32(ceil32(arg3.length)) + _10 + 353] == mem[ceil32(ceil32(arg3.length)) + _10 + 353]
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 353] = mem[ceil32(ceil32(arg3.length)) + _10 + 353]
        require mem[ceil32(ceil32(arg3.length)) + _10 + 385] == mem[ceil32(ceil32(arg3.length)) + _10 + 385]
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 385] = mem[ceil32(ceil32(arg3.length)) + _10 + 385]
        _705 = mem[ceil32(ceil32(arg3.length)) + _10 + 417]
        require mem[ceil32(ceil32(arg3.length)) + _10 + 417] <= test266151307()
        require ceil32(ceil32(arg3.length)) + _10 + mem[ceil32(ceil32(arg3.length)) + _10 + 417] + 128 < ceil32(ceil32(arg3.length)) + return_data.size + 97
        _707 = mem[ceil32(ceil32(arg3.length)) + _10 + mem[ceil32(ceil32(arg3.length)) + _10 + 417] + 97]
        if mem[ceil32(ceil32(arg3.length)) + _10 + mem[ceil32(ceil32(arg3.length)) + _10 + 417] + 97] > test266151307():
            revert with 'NH{q', 65
        _709 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg3.length)) + _10 + mem[ceil32(ceil32(arg3.length)) + _10 + 417] + 97])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg3.length)) + _10 + mem[ceil32(ceil32(arg3.length)) + _10 + 417] + 97])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg3.length)) + _10 + mem[ceil32(ceil32(arg3.length)) + _10 + 417] + 97])) + 1
        mem[_709] = _707
        require _10 + _705 + _707 + 32 <= return_data.size
        mem[_709 + 32 len ceil32(_707)] = mem[ceil32(ceil32(arg3.length)) + _10 + _705 + 129 len ceil32(_707)]
        if ceil32(_707) <= _707:
            mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 417] = _709
            if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                revert with 'NH{q', 33
            if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                _1338 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                mem[mem[64]] = 0x4aaecf5400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(coreAddress)
                call coreAddress.0x4aaecf54 with:
                     gas gas_remaining wei
                    args arg1, address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1371 = mem[64]
                _1375 = mem[96]
                mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1375) <= _1375:
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1375 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < eth.balance(_1338):
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - eth.balance(_1338) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2083 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2084 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2083))
                            staticcall address(_2083).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2084)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2306 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2306] == mem[_2306]
                            if mem[_2306] < eth.balance(_1338):
                                revert with 'NH{q', 17
                            if mem[_2306] - eth.balance(_1338) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                    else:
                        _1970 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1970] = return_data.size
                        mem[_1970 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < eth.balance(_1338):
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - eth.balance(_1338) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2087 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2088 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2087))
                            staticcall address(_2087).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2088)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2307 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2307] == mem[_2307]
                            if mem[_2307] < eth.balance(_1338):
                                revert with 'NH{q', 17
                            if mem[_2307] - eth.balance(_1338) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                else:
                    mem[mem[64] + _1375] = 0
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1371 + _1375 + -mem[64] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < eth.balance(_1338):
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - eth.balance(_1338) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2157 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2158 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2157))
                            staticcall address(_2157).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2158)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2330 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2330] == mem[_2330]
                            if mem[_2330] < eth.balance(_1338):
                                revert with 'NH{q', 17
                            if mem[_2330] - eth.balance(_1338) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                    else:
                        _1982 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1982] = return_data.size
                        mem[_1982 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < eth.balance(_1338):
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - eth.balance(_1338) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2161 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2162 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2161))
                            staticcall address(_2161).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2162)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2331 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2331] == mem[_2331]
                            if mem[_2331] < eth.balance(_1338):
                                revert with 'NH{q', 17
                            if mem[_2331] - eth.balance(_1338) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
            else:
                _1339 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                _1340 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                require ext_code.size(address(_1339))
                staticcall address(_1339).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_1340)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1359 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1365 = mem[_1359]
                require mem[_1359] == mem[_1359]
                mem[mem[64]] = 0x4aaecf5400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(coreAddress)
                call coreAddress.0x4aaecf54 with:
                     gas gas_remaining wei
                    args arg1, address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1523 = mem[96]
                mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1523) <= _1523:
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1523 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < _1365:
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - _1365 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2091 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2092 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2091))
                            staticcall address(_2091).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2092)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2310 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2310] == mem[_2310]
                            if mem[_2310] < _1365:
                                revert with 'NH{q', 17
                            if mem[_2310] - _1365 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                    else:
                        _1972 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1972] = return_data.size
                        mem[_1972 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < _1365:
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - _1365 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2095 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2096 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2095))
                            staticcall address(_2095).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2096)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2311 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2311] == mem[_2311]
                            if mem[_2311] < _1365:
                                revert with 'NH{q', 17
                            if mem[_2311] - _1365 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                else:
                    mem[mem[64] + _1523] = 0
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1523 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < _1365:
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - _1365 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2167 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2168 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2167))
                            staticcall address(_2167).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2168)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2332 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2332] == mem[_2332]
                            if mem[_2332] < _1365:
                                revert with 'NH{q', 17
                            if mem[_2332] - _1365 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                    else:
                        _1983 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1983] = return_data.size
                        mem[_1983 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < _1365:
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - _1365 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2171 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2172 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2171))
                            staticcall address(_2171).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2172)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2333 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2333] == mem[_2333]
                            if mem[_2333] < _1365:
                                revert with 'NH{q', 17
                            if mem[_2333] - _1365 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
        else:
            mem[_709 + _707 + 32] = 0
            mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 417] = _709
            if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                revert with 'NH{q', 33
            if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                _1348 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                mem[mem[64]] = 0x4aaecf5400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(coreAddress)
                call coreAddress.0x4aaecf54 with:
                     gas gas_remaining wei
                    args arg1, address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1377 = mem[96]
                mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1377) <= _1377:
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1377 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < eth.balance(_1348):
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - eth.balance(_1348) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2099 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2100 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2099))
                            staticcall address(_2099).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2100)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2314 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2314] == mem[_2314]
                            if mem[_2314] < eth.balance(_1348):
                                revert with 'NH{q', 17
                            if mem[_2314] - eth.balance(_1348) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                    else:
                        _1974 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1974] = return_data.size
                        mem[_1974 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < eth.balance(_1348):
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - eth.balance(_1348) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2103 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2104 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2103))
                            staticcall address(_2103).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2104)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2315 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2315] == mem[_2315]
                            if mem[_2315] < eth.balance(_1348):
                                revert with 'NH{q', 17
                            if mem[_2315] - eth.balance(_1348) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                else:
                    mem[mem[64] + _1377] = 0
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1377 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < eth.balance(_1348):
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - eth.balance(_1348) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2177 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2178 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2177))
                            staticcall address(_2177).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2178)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2334 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2334] == mem[_2334]
                            if mem[_2334] < eth.balance(_1348):
                                revert with 'NH{q', 17
                            if mem[_2334] - eth.balance(_1348) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                    else:
                        _1984 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1984] = return_data.size
                        mem[_1984 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < eth.balance(_1348):
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - eth.balance(_1348) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2181 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2182 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2181))
                            staticcall address(_2181).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2182)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2335 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2335] == mem[_2335]
                            if mem[_2335] < eth.balance(_1348):
                                revert with 'NH{q', 17
                            if mem[_2335] - eth.balance(_1348) < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
            else:
                _1349 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                _1350 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                require ext_code.size(address(_1349))
                staticcall address(_1349).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_1350)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1361 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1369 = mem[_1361]
                require mem[_1361] == mem[_1361]
                mem[mem[64]] = 0x4aaecf5400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(coreAddress)
                call coreAddress.0x4aaecf54 with:
                     gas gas_remaining wei
                    args arg1, address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1517 = mem[64]
                _1529 = mem[96]
                mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1529) <= _1529:
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1529 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < _1369:
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - _1369 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2107 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2108 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2107))
                            staticcall address(_2107).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2108)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2318 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2318] == mem[_2318]
                            if mem[_2318] < _1369:
                                revert with 'NH{q', 17
                            if mem[_2318] - _1369 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                    else:
                        _1976 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1976] = return_data.size
                        mem[_1976 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < _1369:
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - _1369 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2111 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2112 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2111))
                            staticcall address(_2111).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2112)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2319 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2319] == mem[_2319]
                            if mem[_2319] < _1369:
                                revert with 'NH{q', 17
                            if mem[_2319] - _1369 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                else:
                    mem[mem[64] + _1529] = 0
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1517 + _1529 + -mem[64] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < _1369:
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - _1369 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2187 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2188 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2187))
                            staticcall address(_2187).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2188)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2336 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2336] == mem[_2336]
                            if mem[_2336] < _1369:
                                revert with 'NH{q', 17
                            if mem[_2336] - _1369 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                    else:
                        _1985 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1985] = return_data.size
                        mem[_1985 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FILL_CALLBACK_FAILED'
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] > 2:
                            revert with 'NH{q', 33
                        if mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193] == 2:
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) < _1369:
                                revert with 'NH{q', 17
                            if eth.balance(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]) - _1369 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _2191 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 257]
                            _2192 = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97]
                            mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 109 len 20]
                            require ext_code.size(address(_2191))
                            staticcall address(_2191).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_2192)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2337 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2337] == mem[_2337]
                            if mem[_2337] < _1369:
                                revert with 'NH{q', 17
                            if mem[_2337] - _1369 < mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161]:
                                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
}

function sub_629f2d99(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 352
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] == ('cd', 4)[0]
    mem[128] = ('cd', 4)[0]
    require ('cd', 4)[1] == ('cd', 4)[1]
    mem[160] = ('cd', 4)[1]
    require ('cd', 4)[2] < 3
    mem[192] = ('cd', 4)[2]
    require ('cd', 4)[3] == address(('cd', 4)[3])
    mem[224] = ('cd', 4)[3]
    require ('cd', 4)[4] == address(('cd', 4)[4])
    mem[256] = ('cd', 4)[4]
    require ('cd', 4)[5] <= test266151307()
    require calldata.size + -cd[4] + -('cd', 4)[5] - 4 >= 96
    require cd[(cd[4] + ('cd', 4)[5] + 4)] == cd[(cd[4] + ('cd', 4)[5] + 4)]
    mem[448] = cd[(cd[4] + ('cd', 4)[5] + 4)]
    require cd[(cd[4] + ('cd', 4)[5] + 36)] <= test266151307()
    require cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545 > test266151307() or floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545 < 544:
        revert with 'NH{q', 65
    mem[544] = cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]
    require cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + (32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 36
    t = 576
    while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[480] = 544
    require cd[(cd[4] + ('cd', 4)[5] + 68)] <= test266151307()
    require cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + 546 > test266151307() or floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + 546 < 545:
        revert with 'NH{q', 65
    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545] = cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]
    require cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + (32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 36
    t = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577
    while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[512] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545
    mem[288] = 448
    require ('cd', 4)[6] < 7
    mem[320] = ('cd', 4)[6]
    require ('cd', 4)[7] == ('cd', 4)[7]
    mem[352] = ('cd', 4)[7]
    require ('cd', 4)[8] == ('cd', 4)[8]
    mem[384] = ('cd', 4)[8]
    require ('cd', 4)[9] <= test266151307()
    require cd[4] + ('cd', 4)[9] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[9] + 4)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 547 > test266151307() or ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 547 < 546:
        revert with 'NH{q', 65
    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + 546] = cd[(cd[4] + ('cd', 4)[9] + 4)]
    require cd[4] + ('cd', 4)[9] + cd[(cd[4] + ('cd', 4)[9] + 4)] + 36 <= calldata.size
    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + 578 len cd[(cd[4] + ('cd', 4)[9] + 4)]] = call.data[cd[4] + ('cd', 4)[9] + 36 len cd[(cd[4] + ('cd', 4)[9] + 4)]]
    require cd[36] == uint8(cd[36])
    require cd[68] == cd[68]
    if not uint8(stor2.field_0):
        require msg.sender == tx.origin
        if uint8(stor2.field_168):
            revert with 0, 'NON_REENTRANT'
        Mask(88, 0, stor2.field_168) = 1
        if ('cd', 4)[2] > 2:
            revert with 'NH{q', 33
        if not ('cd', 4)[2]:
            if uint8(cd[36]):
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 551] = msg.sender
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 583] = uint8(cd[36])
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 615] = cd[68]
                require ext_code.size(feeManagerAddress)
                call feeManagerAddress.0x156d0c19 with:
                     gas gas_remaining wei
                    args msg.sender, cd[36] << 248, cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if msg.value <= ('cd', 4)[0]:
                    if msg.value < ('cd', 4)[0]:
                        revert with 0, 'TX_UNDERPRICED'
                    mem[96] = msg.sender
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 547] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 611] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 643] = 64
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 675] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707 len 0] = None
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 579] = 96
                    mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707
                    mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 579
                    if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                        revert with 'NH{q', 50
                    if address(('cd', 4)[3]) != mem[588 len 20]:
                        revert with 0, 'ERR_PATH'
                    if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                        revert with 'NH{q', 17
                    if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                        revert with 'NH{q', 50
                    if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                        revert with 0, 'ERR_PATH'
                    if ('cd', 4)[2] > 2:
                        revert with 'NH{q', 33
                    if not ('cd', 4)[2]:
                        if ('cd', 4)[8] <= block.timestamp:
                            revert with 0, 'ERR_EXPIRY'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                            revert with 0, 'INVALID_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                            revert with 0, 'INVALID_PATH'
                        idx = 0
                        s = mem[128]
                        while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                            if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                revert with 'NH{q', 50
                            _15854 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                            if idx >= mem[544]:
                                revert with 'NH{q', 50
                            _16047 = mem[(32 * idx) + 576]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[544]:
                                revert with 'NH{q', 50
                            _16935 = mem[(32 * idx + 1) + 576]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = address(_16047)
                            mem[mem[64] + 68] = address(_16935)
                            require ext_code.size(address(_15854))
                            staticcall address(_15854).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args s, address(_16047), address(_16935)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17846 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_17846] == mem[_17846]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_17846]
                            continue 
                        if mem[128] + (_18134 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                            revert with 0, 'ERR_CURRENT_AMT'
                        if mem[192] > 2:
                            revert with 'NH{q', 33
                        if mem[192]:
                            _16431 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            _18447 = mem[288]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18831 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19023 = mem[_18831]
                            mem[mem[64] + 484] = mem[_18831]
                            idx = 0
                            s = _18831 + 32
                            t = mem[64] + 516
                            while idx < _19023:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22479 = mem[_18447 + 64]
                            mem[_16431 + 452] = (32 * _19023) + 128
                            _22671 = mem[_22479]
                            mem[_16431 + (32 * _19023) + 516] = mem[_22479]
                            idx = 0
                            s = _22479 + 32
                            t = _16431 + (32 * _19023) + 548
                            while idx < _22671:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16431 + 260] = mem[320]
                            mem[_16431 + 292] = mem[352]
                            mem[_16431 + 324] = mem[384]
                            _26127 = mem[416]
                            mem[_16431 + 356] = (32 * _19023) + (32 * _22671) + 512
                            _26319 = mem[_26127]
                            mem[_16431 + (32 * _19023) + (32 * _22671) + 548] = mem[_26127]
                            mem[_16431 + (32 * _19023) + (32 * _22671) + 580 len ceil32(_26319)] = mem[_26127 + 32 len ceil32(_26319)]
                            if ceil32(_26319) <= _26319:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16431 + (32 * _19023) + (32 * _22671) + ceil32(_26319) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28431 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28431] == mem[_28431]
                            else:
                                mem[_16431 + (32 * _19023) + (32 * _22671) + _26319 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16431 + (32 * _19023) + (32 * _22671) + ceil32(_26319) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28623 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28623] == mem[_28623]
                        else:
                            _16310 = mem[128]
                            _16430 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            _18446 = mem[288]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18830 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19022 = mem[_18830]
                            mem[mem[64] + 484] = mem[_18830]
                            idx = 0
                            s = _18830 + 32
                            t = mem[64] + 516
                            while idx < _19022:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22478 = mem[_18446 + 64]
                            mem[_16430 + 452] = (32 * _19022) + 128
                            _22670 = mem[_22478]
                            mem[_16430 + (32 * _19022) + 516] = mem[_22478]
                            idx = 0
                            s = _22478 + 32
                            t = _16430 + (32 * _19022) + 548
                            while idx < _22670:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16430 + 260] = mem[320]
                            mem[_16430 + 292] = mem[352]
                            mem[_16430 + 324] = mem[384]
                            _26126 = mem[416]
                            mem[_16430 + 356] = (32 * _19022) + (32 * _22670) + 512
                            _26318 = mem[_26126]
                            mem[_16430 + (32 * _19022) + (32 * _22670) + 548] = mem[_26126]
                            mem[_16430 + (32 * _19022) + (32 * _22670) + 580 len ceil32(_26318)] = mem[_26126 + 32 len ceil32(_26318)]
                            if ceil32(_26318) <= _26318:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16310 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16430 + (32 * _19022) + (32 * _22670) + ceil32(_26318) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28430 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28430] == mem[_28430]
                            else:
                                mem[_16430 + (32 * _19022) + (32 * _22670) + _26318 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16310 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16430 + (32 * _19022) + (32 * _22670) + ceil32(_26318) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28622 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28622] == mem[_28622]
                    else:
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 711] = msg.sender
                        require ext_code.size(address(('cd', 4)[3]))
                        staticcall address(('cd', 4)[3]).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ('cd', 4)[0]:
                            revert with 0, 'ERR_BALANCE'
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 711] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 743] = coreAddress
                        require ext_code.size(address(('cd', 4)[3]))
                        staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(msg.sender), coreAddress
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 707
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ('cd', 4)[0]:
                            revert with 0, 'ERR_ALLOWANCE'
                        if ('cd', 4)[8] <= block.timestamp:
                            revert with 0, 'ERR_EXPIRY'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                            revert with 0, 'INVALID_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                            revert with 0, 'INVALID_PATH'
                        idx = 0
                        s = mem[128]
                        while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                            if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                revert with 'NH{q', 50
                            _15856 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                            if idx >= mem[544]:
                                revert with 'NH{q', 50
                            _16049 = mem[(32 * idx) + 576]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[544]:
                                revert with 'NH{q', 50
                            _16938 = mem[(32 * idx + 1) + 576]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = address(_16049)
                            mem[mem[64] + 68] = address(_16938)
                            require ext_code.size(address(_15856))
                            staticcall address(_15856).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args s, address(_16049), address(_16938)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17847 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_17847] == mem[_17847]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_17847]
                            continue 
                        if mem[128] + (_18135 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                            revert with 0, 'ERR_CURRENT_AMT'
                        if mem[192] > 2:
                            revert with 'NH{q', 33
                        if not mem[192]:
                            _16311 = mem[128]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18832 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19024 = mem[_18832]
                            mem[mem[64] + 484] = mem[_18832]
                            idx = 0
                            s = _18832 + 32
                            t = mem[64] + 516
                            while idx < _19024:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22480 = mem[mem[288] + 64]
                            mem[mem[64] + 452] = (32 * _19024) + 128
                            _22672 = mem[_22480]
                            mem[mem[64] + (32 * _19024) + 516] = mem[_22480]
                            idx = 0
                            s = _22480 + 32
                            t = mem[64] + (32 * _19024) + 548
                            while idx < _22672:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[mem[64] + 260] = mem[320]
                            mem[mem[64] + 292] = mem[352]
                            mem[mem[64] + 324] = mem[384]
                            mem[mem[64] + 356] = (32 * _19024) + (32 * _22672) + 512
                            _26320 = mem[mem[416]]
                            mem[mem[64] + (32 * _19024) + (32 * _22672) + 548] = mem[mem[416]]
                            mem[mem[64] + (32 * _19024) + (32 * _22672) + 580 len ceil32(_26320)] = mem[mem[416] + 32 len ceil32(_26320)]
                            if ceil32(_26320) <= _26320:
                                require ext_code.size(coreAddress)
                                call coreAddress.0xd4921084 with:
                                   value _16311 wei
                                     gas gas_remaining wei
                                    args 32, mem[108 len 20], mem[128], mem[160], mem[192], mem[mem[64] + 164 len 64], 352, mem[320], mem[352], mem[384], (32 * _19024) + (32 * _22672) + 512, mem[mem[64] + 388], 96, (32 * _19024) + 128, mem[mem[64] + 484 len (32 * _19024) + (32 * _22672) + ceil32(_26320) + 96]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28432 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28432] == mem[_28432]
                            else:
                                mem[mem[64] + (32 * _19024) + (32 * _22672) + _26320 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.0xd4921084 with:
                                   value _16311 wei
                                     gas gas_remaining wei
                                    args 32, mem[mem[64] + 36 len 192], 352, mem[mem[64] + 260 len 96], (32 * _19024) + (32 * _22672) + 512, mem[mem[64] + 388], 96, (32 * _19024) + 128, mem[mem[64] + 484 len (32 * _19024) + (32 * _22672) + ceil32(_26320) + 96]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28624 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28624] == mem[_28624]
                        else:
                            _16433 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            _18449 = mem[288]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18833 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19025 = mem[_18833]
                            mem[mem[64] + 484] = mem[_18833]
                            idx = 0
                            s = _18833 + 32
                            t = mem[64] + 516
                            while idx < _19025:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22481 = mem[_18449 + 64]
                            mem[_16433 + 452] = (32 * _19025) + 128
                            _22673 = mem[_22481]
                            mem[_16433 + (32 * _19025) + 516] = mem[_22481]
                            idx = 0
                            s = _22481 + 32
                            t = _16433 + (32 * _19025) + 548
                            while idx < _22673:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16433 + 260] = mem[320]
                            mem[_16433 + 292] = mem[352]
                            mem[_16433 + 324] = mem[384]
                            _26129 = mem[416]
                            mem[_16433 + 356] = (32 * _19025) + (32 * _22673) + 512
                            _26321 = mem[_26129]
                            mem[_16433 + (32 * _19025) + (32 * _22673) + 548] = mem[_26129]
                            mem[_16433 + (32 * _19025) + (32 * _22673) + 580 len ceil32(_26321)] = mem[_26129 + 32 len ceil32(_26321)]
                            if ceil32(_26321) <= _26321:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16433 + (32 * _19025) + (32 * _22673) + ceil32(_26321) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28433 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28433] == mem[_28433]
                            else:
                                mem[_16433 + (32 * _19025) + (32 * _22673) + _26321 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16433 + (32 * _19025) + (32 * _22673) + ceil32(_26321) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28625 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28625] == mem[_28625]
                else:
                    if msg.value < ('cd', 4)[0]:
                        revert with 'NH{q', 17
                    call msg.sender with:
                       value msg.value - ('cd', 4)[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FEE_REFUND_FAILED'
                        mem[96] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 547] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 611] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 643] = 64
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 675] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707 len 0] = None
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 579] = 96
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707
                        mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 579
                        if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[3]) != mem[588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if ('cd', 4)[2] > 2:
                            revert with 'NH{q', 33
                        if not ('cd', 4)[2]:
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15862 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16055 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _16947 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16055)
                                mem[mem[64] + 68] = address(_16947)
                                require ext_code.size(address(_15862))
                                staticcall address(_15862).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16055), address(_16947)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17850 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17850] == mem[_17850]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17850]
                                continue 
                            if mem[128] + (_18138 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if not mem[192]:
                                _16314 = mem[128]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18838 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19030 = mem[_18838]
                                mem[mem[64] + 484] = mem[_18838]
                                idx = 0
                                s = _18838 + 32
                                t = mem[64] + 516
                                while idx < _19030:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22486 = mem[mem[288] + 64]
                                mem[mem[64] + 452] = (32 * _19030) + 128
                                _22678 = mem[_22486]
                                mem[mem[64] + (32 * _19030) + 516] = mem[_22486]
                                idx = 0
                                s = _22486 + 32
                                t = mem[64] + (32 * _19030) + 548
                                while idx < _22678:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 260] = mem[320]
                                mem[mem[64] + 292] = mem[352]
                                mem[mem[64] + 324] = mem[384]
                                mem[mem[64] + 356] = (32 * _19030) + (32 * _22678) + 512
                                _26326 = mem[mem[416]]
                                mem[mem[64] + (32 * _19030) + (32 * _22678) + 548] = mem[mem[416]]
                                mem[mem[64] + (32 * _19030) + (32 * _22678) + 580 len ceil32(_26326)] = mem[mem[416] + 32 len ceil32(_26326)]
                                var386001 = ceil32(_26326)
                                if ceil32(_26326) <= _26326:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.0xd4921084 with:
                                       value _16314 wei
                                         gas gas_remaining wei
                                        args 32, mem[108 len 20], mem[128], mem[160], mem[192], mem[mem[64] + 164 len 64], 352, mem[320], mem[352], mem[384], (32 * _19030) + (32 * _22678) + 512, mem[mem[64] + 388], 96, (32 * _19030) + 128, mem[mem[64] + 484 len (32 * _19030) + (32 * _22678) + ceil32(_26326) + 96]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28438 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28438] == mem[_28438]
                                else:
                                    mem[mem[64] + (32 * _19030) + (32 * _22678) + _26326 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.0xd4921084 with:
                                       value _16314 wei
                                         gas gas_remaining wei
                                        args 32, mem[mem[64] + 36 len 192], 352, mem[mem[64] + 260 len 96], (32 * _19030) + (32 * _22678) + 512, mem[mem[64] + 388], 96, (32 * _19030) + 128, mem[mem[64] + 484 len (32 * _19030) + (32 * _22678) + ceil32(_26326) + 96]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28630 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28630] == mem[_28630]
                            else:
                                _16439 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18839 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19031 = mem[_18839]
                                mem[mem[64] + 484] = mem[_18839]
                                idx = 0
                                s = _18839 + 32
                                t = mem[64] + 516
                                while idx < _19031:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22487 = mem[mem[288] + 64]
                                mem[mem[64] + 452] = (32 * _19031) + 128
                                _22679 = mem[_22487]
                                mem[mem[64] + (32 * _19031) + 516] = mem[_22487]
                                idx = 0
                                s = _22487 + 32
                                t = mem[64] + (32 * _19031) + 548
                                while idx < _22679:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16439 + 260] = mem[320]
                                mem[_16439 + 292] = mem[352]
                                mem[_16439 + 324] = mem[384]
                                _26135 = mem[416]
                                mem[_16439 + 356] = (32 * _19031) + (32 * _22679) + 512
                                _26327 = mem[_26135]
                                mem[_16439 + (32 * _19031) + (32 * _22679) + 548] = mem[_26135]
                                mem[_16439 + (32 * _19031) + (32 * _22679) + 580 len ceil32(_26327)] = mem[_26135 + 32 len ceil32(_26327)]
                                var386001 = ceil32(_26327)
                                if ceil32(_26327) <= _26327:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16439 + (32 * _19031) + (32 * _22679) + ceil32(_26327) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28439 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28439] == mem[_28439]
                                else:
                                    mem[_16439 + (32 * _19031) + (32 * _22679) + _26327 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16439 + (32 * _19031) + (32 * _22679) + ceil32(_26327) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28631 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28631] == mem[_28631]
                        else:
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 711] = msg.sender
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_BALANCE'
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 711] = msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 743] = coreAddress
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(msg.sender), coreAddress
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 707
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_ALLOWANCE'
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15864 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16057 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _16950 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16057)
                                mem[mem[64] + 68] = address(_16950)
                                require ext_code.size(address(_15864))
                                staticcall address(_15864).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16057), address(_16950)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17851 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17851] == mem[_17851]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17851]
                                continue 
                            if mem[128] + (_18139 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18841 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19033 = mem[_18841]
                                mem[mem[64] + 484] = mem[_18841]
                                idx = 0
                                s = _18841 + 32
                                t = mem[64] + 516
                                while idx < _19033:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22489 = mem[mem[288] + 64]
                                mem[mem[64] + 452] = (32 * _19033) + 128
                                _22681 = mem[_22489]
                                mem[mem[64] + (32 * _19033) + 516] = mem[_22489]
                                idx = 0
                                s = _22489 + 32
                                t = mem[64] + (32 * _19033) + 548
                                while idx < _22681:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 260] = mem[320]
                                mem[mem[64] + 292] = mem[352]
                                mem[mem[64] + 324] = mem[384]
                                mem[mem[64] + 356] = (32 * _19033) + (32 * _22681) + 512
                                _26329 = mem[mem[416]]
                                mem[mem[64] + (32 * _19033) + (32 * _22681) + 548] = mem[mem[416]]
                                mem[mem[64] + (32 * _19033) + (32 * _22681) + 580 len ceil32(_26329)] = mem[mem[416] + 32 len ceil32(_26329)]
                                var435001 = ceil32(_26329)
                                if ceil32(_26329) <= _26329:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.0xd4921084 with:
                                         gas gas_remaining wei
                                        args 32, mem[108 len 20], mem[128], mem[160], mem[192], mem[mem[64] + 164 len 64], 352, mem[320], mem[352], mem[384], (32 * _19033) + (32 * _22681) + 512, mem[mem[64] + 388], 96, (32 * _19033) + 128, mem[mem[64] + 484 len (32 * _19033) + (32 * _22681) + ceil32(_26329) + 96]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28441 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28441] == mem[_28441]
                                else:
                                    mem[mem[64] + (32 * _19033) + (32 * _22681) + _26329 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.0xd4921084 with:
                                         gas gas_remaining wei
                                        args 32, mem[mem[64] + 36 len 192], 352, mem[mem[64] + 260 len 96], (32 * _19033) + (32 * _22681) + 512, mem[mem[64] + 388], 96, (32 * _19033) + 128, mem[mem[64] + 484 len (32 * _19033) + (32 * _22681) + ceil32(_26329) + 96]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28633 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28633] == mem[_28633]
                            else:
                                _16315 = mem[128]
                                _16440 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18456 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18840 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19032 = mem[_18840]
                                mem[mem[64] + 484] = mem[_18840]
                                idx = 0
                                s = _18840 + 32
                                t = mem[64] + 516
                                while idx < _19032:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22488 = mem[_18456 + 64]
                                mem[_16440 + 452] = (32 * _19032) + 128
                                _22680 = mem[_22488]
                                mem[_16440 + (32 * _19032) + 516] = mem[_22488]
                                idx = 0
                                s = _22488 + 32
                                t = _16440 + (32 * _19032) + 548
                                while idx < _22680:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16440 + 260] = mem[320]
                                mem[_16440 + 292] = mem[352]
                                mem[_16440 + 324] = mem[384]
                                _26136 = mem[416]
                                mem[_16440 + 356] = (32 * _19032) + (32 * _22680) + 512
                                _26328 = mem[_26136]
                                mem[_16440 + (32 * _19032) + (32 * _22680) + 548] = mem[_26136]
                                mem[_16440 + (32 * _19032) + (32 * _22680) + 580 len ceil32(_26328)] = mem[_26136 + 32 len ceil32(_26328)]
                                var435001 = ceil32(_26328)
                                if ceil32(_26328) <= _26328:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16315 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16440 + (32 * _19032) + (32 * _22680) + ceil32(_26328) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28440 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28440] == mem[_28440]
                                else:
                                    mem[_16440 + (32 * _19032) + (32 * _22680) + _26328 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16315 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16440 + (32 * _19032) + (32 * _22680) + ceil32(_26328) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28632 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28632] == mem[_28632]
                    else:
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 547] = return_data.size
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 579 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FEE_REFUND_FAILED'
                        mem[96] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 548] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 612] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 644] = 64
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 676] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 708 len 0] = None
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 580] = 96
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 708
                        mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 580
                        if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[3]) != mem[588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if ('cd', 4)[2] > 2:
                            revert with 'NH{q', 33
                        if not ('cd', 4)[2]:
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15870 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16063 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _16959 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16063)
                                mem[mem[64] + 68] = address(_16959)
                                require ext_code.size(address(_15870))
                                staticcall address(_15870).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16063), address(_16959)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17854 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17854] == mem[_17854]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17854]
                                continue 
                            if mem[128] + (_18142 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18847 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19039 = mem[_18847]
                                mem[mem[64] + 484] = mem[_18847]
                                idx = 0
                                s = _18847 + 32
                                t = mem[64] + 516
                                while idx < _19039:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22495 = mem[mem[288] + 64]
                                mem[mem[64] + 452] = (32 * _19039) + 128
                                _22687 = mem[_22495]
                                mem[mem[64] + (32 * _19039) + 516] = mem[_22495]
                                idx = 0
                                s = _22495 + 32
                                t = mem[64] + (32 * _19039) + 548
                                while idx < _22687:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 260] = mem[320]
                                mem[mem[64] + 292] = mem[352]
                                mem[mem[64] + 324] = mem[384]
                                mem[mem[64] + 356] = (32 * _19039) + (32 * _22687) + 512
                                _26335 = mem[mem[416]]
                                mem[mem[64] + (32 * _19039) + (32 * _22687) + 548] = mem[mem[416]]
                                mem[mem[64] + (32 * _19039) + (32 * _22687) + 580 len ceil32(_26335)] = mem[mem[416] + 32 len ceil32(_26335)]
                                var386001 = ceil32(_26335)
                                if ceil32(_26335) <= _26335:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.0xd4921084 with:
                                         gas gas_remaining wei
                                        args 32, mem[108 len 20], mem[128], mem[160], mem[192], mem[mem[64] + 164 len 64], 352, mem[320], mem[352], mem[384], (32 * _19039) + (32 * _22687) + 512, mem[mem[64] + 388], 96, (32 * _19039) + 128, mem[mem[64] + 484 len (32 * _19039) + (32 * _22687) + ceil32(_26335) + 96]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28447 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28447] == mem[_28447]
                                else:
                                    mem[mem[64] + (32 * _19039) + (32 * _22687) + _26335 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.0xd4921084 with:
                                         gas gas_remaining wei
                                        args 32, mem[mem[64] + 36 len 192], 352, mem[mem[64] + 260 len 96], (32 * _19039) + (32 * _22687) + 512, mem[mem[64] + 388], 96, (32 * _19039) + 128, mem[mem[64] + 484 len (32 * _19039) + (32 * _22687) + ceil32(_26335) + 96]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28639 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28639] == mem[_28639]
                            else:
                                _16318 = mem[128]
                                _16446 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18462 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18846 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19038 = mem[_18846]
                                mem[mem[64] + 484] = mem[_18846]
                                idx = 0
                                s = _18846 + 32
                                t = mem[64] + 516
                                while idx < _19038:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22494 = mem[_18462 + 64]
                                mem[_16446 + 452] = (32 * _19038) + 128
                                _22686 = mem[_22494]
                                mem[_16446 + (32 * _19038) + 516] = mem[_22494]
                                idx = 0
                                s = _22494 + 32
                                t = _16446 + (32 * _19038) + 548
                                while idx < _22686:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16446 + 260] = mem[320]
                                mem[_16446 + 292] = mem[352]
                                mem[_16446 + 324] = mem[384]
                                _26142 = mem[416]
                                mem[_16446 + 356] = (32 * _19038) + (32 * _22686) + 512
                                _26334 = mem[_26142]
                                mem[_16446 + (32 * _19038) + (32 * _22686) + 548] = mem[_26142]
                                mem[_16446 + (32 * _19038) + (32 * _22686) + 580 len ceil32(_26334)] = mem[_26142 + 32 len ceil32(_26334)]
                                var386001 = ceil32(_26334)
                                if ceil32(_26334) <= _26334:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16318 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16446 + (32 * _19038) + (32 * _22686) + ceil32(_26334) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28446 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28446] == mem[_28446]
                                else:
                                    mem[_16446 + (32 * _19038) + (32 * _22686) + _26334 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16318 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16446 + (32 * _19038) + (32 * _22686) + ceil32(_26334) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28638 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28638] == mem[_28638]
                        else:
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 712] = msg.sender
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 708] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_BALANCE'
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 712] = msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 744] = coreAddress
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(msg.sender), coreAddress
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 708] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 708
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_ALLOWANCE'
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15872 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16065 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _16962 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16065)
                                mem[mem[64] + 68] = address(_16962)
                                require ext_code.size(address(_15872))
                                staticcall address(_15872).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16065), address(_16962)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17855 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17855] == mem[_17855]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17855]
                                continue 
                            if mem[128] + (_18143 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16449 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18465 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18849 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19041 = mem[_18849]
                                mem[mem[64] + 484] = mem[_18849]
                                idx = 0
                                s = _18849 + 32
                                t = mem[64] + 516
                                while idx < _19041:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22497 = mem[_18465 + 64]
                                mem[_16449 + 452] = (32 * _19041) + 128
                                _22689 = mem[_22497]
                                mem[_16449 + (32 * _19041) + 516] = mem[_22497]
                                idx = 0
                                s = _22497 + 32
                                t = _16449 + (32 * _19041) + 548
                                while idx < _22689:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16449 + 260] = mem[320]
                                mem[_16449 + 292] = mem[352]
                                mem[_16449 + 324] = mem[384]
                                _26145 = mem[416]
                                mem[_16449 + 356] = (32 * _19041) + (32 * _22689) + 512
                                _26337 = mem[_26145]
                                mem[_16449 + (32 * _19041) + (32 * _22689) + 548] = mem[_26145]
                                mem[_16449 + (32 * _19041) + (32 * _22689) + 580 len ceil32(_26337)] = mem[_26145 + 32 len ceil32(_26337)]
                                var435001 = ceil32(_26337)
                                if ceil32(_26337) <= _26337:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16449 + (32 * _19041) + (32 * _22689) + ceil32(_26337) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28449 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28449] == mem[_28449]
                                else:
                                    mem[_16449 + (32 * _19041) + (32 * _22689) + _26337 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16449 + (32 * _19041) + (32 * _22689) + ceil32(_26337) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28641 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28641] == mem[_28641]
                            else:
                                _16319 = mem[128]
                                _16448 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18464 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18848 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19040 = mem[_18848]
                                mem[mem[64] + 484] = mem[_18848]
                                idx = 0
                                s = _18848 + 32
                                t = mem[64] + 516
                                while idx < _19040:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22496 = mem[_18464 + 64]
                                mem[_16448 + 452] = (32 * _19040) + 128
                                _22688 = mem[_22496]
                                mem[_16448 + (32 * _19040) + 516] = mem[_22496]
                                idx = 0
                                s = _22496 + 32
                                t = _16448 + (32 * _19040) + 548
                                while idx < _22688:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16448 + 260] = mem[320]
                                mem[_16448 + 292] = mem[352]
                                mem[_16448 + 324] = mem[384]
                                _26144 = mem[416]
                                mem[_16448 + 356] = (32 * _19040) + (32 * _22688) + 512
                                _26336 = mem[_26144]
                                mem[_16448 + (32 * _19040) + (32 * _22688) + 548] = mem[_26144]
                                mem[_16448 + (32 * _19040) + (32 * _22688) + 580 len ceil32(_26336)] = mem[_26144 + 32 len ceil32(_26336)]
                                var435001 = ceil32(_26336)
                                if ceil32(_26336) <= _26336:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16319 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16448 + (32 * _19040) + (32 * _22688) + ceil32(_26336) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28448 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28448] == mem[_28448]
                                else:
                                    mem[_16448 + (32 * _19040) + (32 * _22688) + _26336 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16319 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16448 + (32 * _19040) + (32 * _22688) + ceil32(_26336) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28640 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28640] == mem[_28640]
            else:
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 551] = this.address
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 583] = uint8(cd[36])
                require ext_code.size(feeManagerAddress)
                staticcall feeManagerAddress.0x2506d6f0 with:
                        gas gas_remaining wei
                       args address(this.address), uint8(cd[36])
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 547] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > msg.value:
                    revert with 0, 'TX_UNDERPRICED'
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 551] = msg.sender
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 583] = uint8(cd[36])
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 615] = cd[68]
                require ext_code.size(feeManagerAddress)
                call feeManagerAddress.0x156d0c19 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args msg.sender, cd[36] << 248, cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if msg.value < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if msg.value - ext_call.return_data[0] <= ('cd', 4)[0]:
                    if msg.value - ext_call.return_data[0] < ('cd', 4)[0]:
                        revert with 0, 'TX_UNDERPRICED'
                    mem[96] = msg.sender
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 547] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 611] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 643] = 64
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 675] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707 len 0] = None
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 579] = 96
                    mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707
                    mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 579
                    if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                        revert with 'NH{q', 50
                    if address(('cd', 4)[3]) != mem[588 len 20]:
                        revert with 0, 'ERR_PATH'
                    if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                        revert with 'NH{q', 17
                    if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                        revert with 'NH{q', 50
                    if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                        revert with 0, 'ERR_PATH'
                    if ('cd', 4)[2] > 2:
                        revert with 'NH{q', 33
                    if not ('cd', 4)[2]:
                        if ('cd', 4)[8] <= block.timestamp:
                            revert with 0, 'ERR_EXPIRY'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                            revert with 0, 'INVALID_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                            revert with 0, 'INVALID_PATH'
                        idx = 0
                        s = mem[128]
                        while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                            if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                revert with 'NH{q', 50
                            _15878 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                            if idx >= mem[544]:
                                revert with 'NH{q', 50
                            _16071 = mem[(32 * idx) + 576]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[544]:
                                revert with 'NH{q', 50
                            _16971 = mem[(32 * idx + 1) + 576]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = address(_16071)
                            mem[mem[64] + 68] = address(_16971)
                            require ext_code.size(address(_15878))
                            staticcall address(_15878).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args s, address(_16071), address(_16971)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17858 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_17858] == mem[_17858]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_17858]
                            continue 
                        if mem[128] + (_18146 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                            revert with 0, 'ERR_CURRENT_AMT'
                        if mem[192] > 2:
                            revert with 'NH{q', 33
                        if mem[192]:
                            _16455 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18855 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19047 = mem[_18855]
                            mem[mem[64] + 484] = mem[_18855]
                            idx = 0
                            s = _18855 + 32
                            t = mem[64] + 516
                            while idx < _19047:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22503 = mem[mem[288] + 64]
                            mem[mem[64] + 452] = (32 * _19047) + 128
                            _22695 = mem[_22503]
                            mem[mem[64] + (32 * _19047) + 516] = mem[_22503]
                            idx = 0
                            s = _22503 + 32
                            t = mem[64] + (32 * _19047) + 548
                            while idx < _22695:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16455 + 260] = mem[320]
                            mem[_16455 + 292] = mem[352]
                            mem[_16455 + 324] = mem[384]
                            _26151 = mem[416]
                            mem[_16455 + 356] = (32 * _19047) + (32 * _22695) + 512
                            _26343 = mem[_26151]
                            mem[_16455 + (32 * _19047) + (32 * _22695) + 548] = mem[_26151]
                            mem[_16455 + (32 * _19047) + (32 * _22695) + 580 len ceil32(_26343)] = mem[_26151 + 32 len ceil32(_26343)]
                            if ceil32(_26343) <= _26343:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16455 + (32 * _19047) + (32 * _22695) + ceil32(_26343) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28455 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28455] == mem[_28455]
                            else:
                                mem[_16455 + (32 * _19047) + (32 * _22695) + _26343 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16455 + (32 * _19047) + (32 * _22695) + ceil32(_26343) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28647 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28647] == mem[_28647]
                        else:
                            _16322 = mem[128]
                            _16454 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            _18470 = mem[288]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18854 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19046 = mem[_18854]
                            mem[mem[64] + 484] = mem[_18854]
                            idx = 0
                            s = _18854 + 32
                            t = mem[64] + 516
                            while idx < _19046:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22502 = mem[_18470 + 64]
                            mem[_16454 + 452] = (32 * _19046) + 128
                            _22694 = mem[_22502]
                            mem[_16454 + (32 * _19046) + 516] = mem[_22502]
                            idx = 0
                            s = _22502 + 32
                            t = _16454 + (32 * _19046) + 548
                            while idx < _22694:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16454 + 260] = mem[320]
                            mem[_16454 + 292] = mem[352]
                            mem[_16454 + 324] = mem[384]
                            _26150 = mem[416]
                            mem[_16454 + 356] = (32 * _19046) + (32 * _22694) + 512
                            _26342 = mem[_26150]
                            mem[_16454 + (32 * _19046) + (32 * _22694) + 548] = mem[_26150]
                            mem[_16454 + (32 * _19046) + (32 * _22694) + 580 len ceil32(_26342)] = mem[_26150 + 32 len ceil32(_26342)]
                            if ceil32(_26342) <= _26342:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16322 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16454 + (32 * _19046) + (32 * _22694) + ceil32(_26342) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28454 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28454] == mem[_28454]
                            else:
                                mem[_16454 + (32 * _19046) + (32 * _22694) + _26342 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16322 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16454 + (32 * _19046) + (32 * _22694) + ceil32(_26342) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28646 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28646] == mem[_28646]
                    else:
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 711] = msg.sender
                        require ext_code.size(address(('cd', 4)[3]))
                        staticcall address(('cd', 4)[3]).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ('cd', 4)[0]:
                            revert with 0, 'ERR_BALANCE'
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 711] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 743] = coreAddress
                        require ext_code.size(address(('cd', 4)[3]))
                        staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(msg.sender), coreAddress
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 707] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (4 * ceil32(return_data.size)) + 707
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ('cd', 4)[0]:
                            revert with 0, 'ERR_ALLOWANCE'
                        if ('cd', 4)[8] <= block.timestamp:
                            revert with 0, 'ERR_EXPIRY'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                            revert with 0, 'INVALID_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                            revert with 0, 'INVALID_PATH'
                        idx = 0
                        s = mem[128]
                        while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                            if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                revert with 'NH{q', 50
                            _15880 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                            if idx >= mem[544]:
                                revert with 'NH{q', 50
                            _16073 = mem[(32 * idx) + 576]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[544]:
                                revert with 'NH{q', 50
                            _16974 = mem[(32 * idx + 1) + 576]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = address(_16073)
                            mem[mem[64] + 68] = address(_16974)
                            require ext_code.size(address(_15880))
                            staticcall address(_15880).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args s, address(_16073), address(_16974)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17859 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_17859] == mem[_17859]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_17859]
                            continue 
                        if mem[128] + (_18147 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                            revert with 0, 'ERR_CURRENT_AMT'
                        if mem[192] > 2:
                            revert with 'NH{q', 33
                        if mem[192]:
                            _16457 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18857 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19049 = mem[_18857]
                            mem[mem[64] + 484] = mem[_18857]
                            idx = 0
                            s = _18857 + 32
                            t = mem[64] + 516
                            while idx < _19049:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22505 = mem[mem[288] + 64]
                            mem[mem[64] + 452] = (32 * _19049) + 128
                            _22697 = mem[_22505]
                            mem[mem[64] + (32 * _19049) + 516] = mem[_22505]
                            idx = 0
                            s = _22505 + 32
                            t = mem[64] + (32 * _19049) + 548
                            while idx < _22697:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16457 + 260] = mem[320]
                            mem[_16457 + 292] = mem[352]
                            mem[_16457 + 324] = mem[384]
                            _26153 = mem[416]
                            mem[_16457 + 356] = (32 * _19049) + (32 * _22697) + 512
                            _26345 = mem[_26153]
                            mem[_16457 + (32 * _19049) + (32 * _22697) + 548] = mem[_26153]
                            mem[_16457 + (32 * _19049) + (32 * _22697) + 580 len ceil32(_26345)] = mem[_26153 + 32 len ceil32(_26345)]
                            if ceil32(_26345) <= _26345:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16457 + (32 * _19049) + (32 * _22697) + ceil32(_26345) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28457 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28457] == mem[_28457]
                            else:
                                mem[_16457 + (32 * _19049) + (32 * _22697) + _26345 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16457 + (32 * _19049) + (32 * _22697) + ceil32(_26345) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28649 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28649] == mem[_28649]
                        else:
                            _16323 = mem[128]
                            _16456 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18856 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19048 = mem[_18856]
                            mem[mem[64] + 484] = mem[_18856]
                            idx = 0
                            s = _18856 + 32
                            t = mem[64] + 516
                            while idx < _19048:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22504 = mem[mem[288] + 64]
                            mem[mem[64] + 452] = (32 * _19048) + 128
                            _22696 = mem[_22504]
                            mem[mem[64] + (32 * _19048) + 516] = mem[_22504]
                            idx = 0
                            s = _22504 + 32
                            t = mem[64] + (32 * _19048) + 548
                            while idx < _22696:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16456 + 260] = mem[320]
                            mem[_16456 + 292] = mem[352]
                            mem[_16456 + 324] = mem[384]
                            _26152 = mem[416]
                            mem[_16456 + 356] = (32 * _19048) + (32 * _22696) + 512
                            _26344 = mem[_26152]
                            mem[_16456 + (32 * _19048) + (32 * _22696) + 548] = mem[_26152]
                            mem[_16456 + (32 * _19048) + (32 * _22696) + 580 len ceil32(_26344)] = mem[_26152 + 32 len ceil32(_26344)]
                            if ceil32(_26344) <= _26344:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16323 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16456 + (32 * _19048) + (32 * _22696) + ceil32(_26344) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28456 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28456] == mem[_28456]
                            else:
                                mem[_16456 + (32 * _19048) + (32 * _22696) + _26344 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16323 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16456 + (32 * _19048) + (32 * _22696) + ceil32(_26344) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28648 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28648] == mem[_28648]
                else:
                    if msg.value - ext_call.return_data[0] < ('cd', 4)[0]:
                        revert with 'NH{q', 17
                    call msg.sender with:
                       value msg.value - ext_call.return_data[0] - ('cd', 4)[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FEE_REFUND_FAILED'
                        mem[96] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 547] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 611] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 643] = 64
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 675] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707 len 0] = None
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 579] = 96
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707
                        mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 579
                        if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[3]) != mem[588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if ('cd', 4)[2] > 2:
                            revert with 'NH{q', 33
                        if not ('cd', 4)[2]:
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15886 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16079 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _16983 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16079)
                                mem[mem[64] + 68] = address(_16983)
                                require ext_code.size(address(_15886))
                                staticcall address(_15886).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16079), address(_16983)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17862 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17862] == mem[_17862]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17862]
                                continue 
                            if mem[128] + (_18150 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16463 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18479 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18863 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19055 = mem[_18863]
                                mem[mem[64] + 484] = mem[_18863]
                                idx = 0
                                s = _18863 + 32
                                t = mem[64] + 516
                                while idx < _19055:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22511 = mem[_18479 + 64]
                                mem[_16463 + 452] = (32 * _19055) + 128
                                _22703 = mem[_22511]
                                mem[_16463 + (32 * _19055) + 516] = mem[_22511]
                                idx = 0
                                s = _22511 + 32
                                t = _16463 + (32 * _19055) + 548
                                while idx < _22703:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16463 + 260] = mem[320]
                                mem[_16463 + 292] = mem[352]
                                mem[_16463 + 324] = mem[384]
                                _26159 = mem[416]
                                mem[_16463 + 356] = (32 * _19055) + (32 * _22703) + 512
                                _26351 = mem[_26159]
                                mem[_16463 + (32 * _19055) + (32 * _22703) + 548] = mem[_26159]
                                mem[_16463 + (32 * _19055) + (32 * _22703) + 580 len ceil32(_26351)] = mem[_26159 + 32 len ceil32(_26351)]
                                if ceil32(_26351) <= _26351:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16463 + (32 * _19055) + (32 * _22703) + ceil32(_26351) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28463 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28463] == mem[_28463]
                                else:
                                    mem[_16463 + (32 * _19055) + (32 * _22703) + _26351 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16463 + (32 * _19055) + (32 * _22703) + ceil32(_26351) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28655 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28655] == mem[_28655]
                            else:
                                _16326 = mem[128]
                                _16462 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18478 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18862 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19054 = mem[_18862]
                                mem[mem[64] + 484] = mem[_18862]
                                idx = 0
                                s = _18862 + 32
                                t = mem[64] + 516
                                while idx < _19054:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22510 = mem[_18478 + 64]
                                mem[_16462 + 452] = (32 * _19054) + 128
                                _22702 = mem[_22510]
                                mem[_16462 + (32 * _19054) + 516] = mem[_22510]
                                idx = 0
                                s = _22510 + 32
                                t = _16462 + (32 * _19054) + 548
                                while idx < _22702:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16462 + 260] = mem[320]
                                mem[_16462 + 292] = mem[352]
                                mem[_16462 + 324] = mem[384]
                                _26158 = mem[416]
                                mem[_16462 + 356] = (32 * _19054) + (32 * _22702) + 512
                                _26350 = mem[_26158]
                                mem[_16462 + (32 * _19054) + (32 * _22702) + 548] = mem[_26158]
                                mem[_16462 + (32 * _19054) + (32 * _22702) + 580 len ceil32(_26350)] = mem[_26158 + 32 len ceil32(_26350)]
                                if ceil32(_26350) <= _26350:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16326 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16462 + (32 * _19054) + (32 * _22702) + ceil32(_26350) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28462 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28462] == mem[_28462]
                                else:
                                    mem[_16462 + (32 * _19054) + (32 * _22702) + _26350 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16326 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16462 + (32 * _19054) + (32 * _22702) + ceil32(_26350) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28654 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28654] == mem[_28654]
                        else:
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 711] = msg.sender
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_BALANCE'
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 711] = msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 743] = coreAddress
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(msg.sender), coreAddress
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 707] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (4 * ceil32(return_data.size)) + 707
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_ALLOWANCE'
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15888 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16081 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _16986 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16081)
                                mem[mem[64] + 68] = address(_16986)
                                require ext_code.size(address(_15888))
                                staticcall address(_15888).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16081), address(_16986)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17863 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17863] == mem[_17863]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17863]
                                continue 
                            if mem[128] + (_18151 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16465 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18865 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19057 = mem[_18865]
                                mem[mem[64] + 484] = mem[_18865]
                                idx = 0
                                s = _18865 + 32
                                t = mem[64] + 516
                                while idx < _19057:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22513 = mem[mem[288] + 64]
                                mem[mem[64] + 452] = (32 * _19057) + 128
                                _22705 = mem[_22513]
                                mem[mem[64] + (32 * _19057) + 516] = mem[_22513]
                                idx = 0
                                s = _22513 + 32
                                t = mem[64] + (32 * _19057) + 548
                                while idx < _22705:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16465 + 260] = mem[320]
                                mem[_16465 + 292] = mem[352]
                                mem[_16465 + 324] = mem[384]
                                _26161 = mem[416]
                                mem[_16465 + 356] = (32 * _19057) + (32 * _22705) + 512
                                _26353 = mem[_26161]
                                mem[_16465 + (32 * _19057) + (32 * _22705) + 548] = mem[_26161]
                                mem[_16465 + (32 * _19057) + (32 * _22705) + 580 len ceil32(_26353)] = mem[_26161 + 32 len ceil32(_26353)]
                                if ceil32(_26353) <= _26353:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16465 + (32 * _19057) + (32 * _22705) + ceil32(_26353) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28465 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28465] == mem[_28465]
                                else:
                                    mem[_16465 + (32 * _19057) + (32 * _22705) + _26353 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16465 + (32 * _19057) + (32 * _22705) + ceil32(_26353) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28657 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28657] == mem[_28657]
                            else:
                                _16327 = mem[128]
                                _16464 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18480 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18864 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19056 = mem[_18864]
                                mem[mem[64] + 484] = mem[_18864]
                                idx = 0
                                s = _18864 + 32
                                t = mem[64] + 516
                                while idx < _19056:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22512 = mem[_18480 + 64]
                                mem[_16464 + 452] = (32 * _19056) + 128
                                _22704 = mem[_22512]
                                mem[_16464 + (32 * _19056) + 516] = mem[_22512]
                                idx = 0
                                s = _22512 + 32
                                t = _16464 + (32 * _19056) + 548
                                while idx < _22704:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16464 + 260] = mem[320]
                                mem[_16464 + 292] = mem[352]
                                mem[_16464 + 324] = mem[384]
                                _26160 = mem[416]
                                mem[_16464 + 356] = (32 * _19056) + (32 * _22704) + 512
                                _26352 = mem[_26160]
                                mem[_16464 + (32 * _19056) + (32 * _22704) + 548] = mem[_26160]
                                mem[_16464 + (32 * _19056) + (32 * _22704) + 580 len ceil32(_26352)] = mem[_26160 + 32 len ceil32(_26352)]
                                if ceil32(_26352) <= _26352:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16327 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16464 + (32 * _19056) + (32 * _22704) + ceil32(_26352) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28464 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28464] == mem[_28464]
                                else:
                                    mem[_16464 + (32 * _19056) + (32 * _22704) + _26352 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16327 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16464 + (32 * _19056) + (32 * _22704) + ceil32(_26352) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28656 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28656] == mem[_28656]
                    else:
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 547] = return_data.size
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 579 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FEE_REFUND_FAILED'
                        mem[96] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 548] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 612] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 644] = 64
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 676] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 708 len 0] = None
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 580] = 96
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 708
                        mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 580
                        if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[3]) != mem[588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if ('cd', 4)[2] > 2:
                            revert with 'NH{q', 33
                        if not ('cd', 4)[2]:
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15894 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16087 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _16995 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16087)
                                mem[mem[64] + 68] = address(_16995)
                                require ext_code.size(address(_15894))
                                staticcall address(_15894).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16087), address(_16995)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17866 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17866] == mem[_17866]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17866]
                                continue 
                            if mem[128] + (_18154 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16471 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18871 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19063 = mem[_18871]
                                mem[mem[64] + 484] = mem[_18871]
                                idx = 0
                                s = _18871 + 32
                                t = mem[64] + 516
                                while idx < _19063:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22519 = mem[mem[288] + 64]
                                mem[mem[64] + 452] = (32 * _19063) + 128
                                _22711 = mem[_22519]
                                mem[mem[64] + (32 * _19063) + 516] = mem[_22519]
                                idx = 0
                                s = _22519 + 32
                                t = mem[64] + (32 * _19063) + 548
                                while idx < _22711:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16471 + 260] = mem[320]
                                mem[_16471 + 292] = mem[352]
                                mem[_16471 + 324] = mem[384]
                                _26167 = mem[416]
                                mem[_16471 + 356] = (32 * _19063) + (32 * _22711) + 512
                                _26359 = mem[_26167]
                                mem[_16471 + (32 * _19063) + (32 * _22711) + 548] = mem[_26167]
                                mem[_16471 + (32 * _19063) + (32 * _22711) + 580 len ceil32(_26359)] = mem[_26167 + 32 len ceil32(_26359)]
                                if ceil32(_26359) <= _26359:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16471 + (32 * _19063) + (32 * _22711) + ceil32(_26359) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28471 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28471] == mem[_28471]
                                else:
                                    mem[_16471 + (32 * _19063) + (32 * _22711) + _26359 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16471 + (32 * _19063) + (32 * _22711) + ceil32(_26359) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28663 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28663] == mem[_28663]
                            else:
                                _16330 = mem[128]
                                _16470 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18870 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19062 = mem[_18870]
                                mem[mem[64] + 484] = mem[_18870]
                                idx = 0
                                s = _18870 + 32
                                t = mem[64] + 516
                                while idx < _19062:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22518 = mem[mem[288] + 64]
                                mem[mem[64] + 452] = (32 * _19062) + 128
                                _22710 = mem[_22518]
                                mem[mem[64] + (32 * _19062) + 516] = mem[_22518]
                                idx = 0
                                s = _22518 + 32
                                t = mem[64] + (32 * _19062) + 548
                                while idx < _22710:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16470 + 260] = mem[320]
                                mem[_16470 + 292] = mem[352]
                                mem[_16470 + 324] = mem[384]
                                _26166 = mem[416]
                                mem[_16470 + 356] = (32 * _19062) + (32 * _22710) + 512
                                _26358 = mem[_26166]
                                mem[_16470 + (32 * _19062) + (32 * _22710) + 548] = mem[_26166]
                                mem[_16470 + (32 * _19062) + (32 * _22710) + 580 len ceil32(_26358)] = mem[_26166 + 32 len ceil32(_26358)]
                                if ceil32(_26358) <= _26358:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16330 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16470 + (32 * _19062) + (32 * _22710) + ceil32(_26358) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28470 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28470] == mem[_28470]
                                else:
                                    mem[_16470 + (32 * _19062) + (32 * _22710) + _26358 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16330 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16470 + (32 * _19062) + (32 * _22710) + ceil32(_26358) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28662 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28662] == mem[_28662]
                        else:
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 712] = msg.sender
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 708] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_BALANCE'
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 712] = msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 744] = coreAddress
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(msg.sender), coreAddress
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 708] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 708
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_ALLOWANCE'
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15896 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16089 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _16998 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16089)
                                mem[mem[64] + 68] = address(_16998)
                                require ext_code.size(address(_15896))
                                staticcall address(_15896).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16089), address(_16998)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17867 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17867] == mem[_17867]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17867]
                                continue 
                            if mem[128] + (_18155 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if not mem[192]:
                                _16331 = mem[128]
                                _16472 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18872 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19064 = mem[_18872]
                                mem[mem[64] + 484] = mem[_18872]
                                idx = 0
                                s = _18872 + 32
                                t = mem[64] + 516
                                while idx < _19064:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22520 = mem[mem[288] + 64]
                                mem[mem[64] + 452] = (32 * _19064) + 128
                                _22712 = mem[_22520]
                                mem[mem[64] + (32 * _19064) + 516] = mem[_22520]
                                idx = 0
                                s = _22520 + 32
                                t = mem[64] + (32 * _19064) + 548
                                while idx < _22712:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16472 + 260] = mem[320]
                                mem[_16472 + 292] = mem[352]
                                mem[_16472 + 324] = mem[384]
                                _26168 = mem[416]
                                mem[_16472 + 356] = (32 * _19064) + (32 * _22712) + 512
                                _26360 = mem[_26168]
                                mem[_16472 + (32 * _19064) + (32 * _22712) + 548] = mem[_26168]
                                mem[_16472 + (32 * _19064) + (32 * _22712) + 580 len ceil32(_26360)] = mem[_26168 + 32 len ceil32(_26360)]
                                if ceil32(_26360) <= _26360:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16331 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16472 + (32 * _19064) + (32 * _22712) + ceil32(_26360) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28472 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28472] == mem[_28472]
                                else:
                                    mem[_16472 + (32 * _19064) + (32 * _22712) + _26360 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16331 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16472 + (32 * _19064) + (32 * _22712) + ceil32(_26360) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28664 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28664] == mem[_28664]
                            else:
                                _16473 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18489 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18873 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19065 = mem[_18873]
                                mem[mem[64] + 484] = mem[_18873]
                                idx = 0
                                s = _18873 + 32
                                t = mem[64] + 516
                                while idx < _19065:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22521 = mem[_18489 + 64]
                                mem[_16473 + 452] = (32 * _19065) + 128
                                _22713 = mem[_22521]
                                mem[_16473 + (32 * _19065) + 516] = mem[_22521]
                                idx = 0
                                s = _22521 + 32
                                t = _16473 + (32 * _19065) + 548
                                while idx < _22713:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16473 + 260] = mem[320]
                                mem[_16473 + 292] = mem[352]
                                mem[_16473 + 324] = mem[384]
                                _26169 = mem[416]
                                mem[_16473 + 356] = (32 * _19065) + (32 * _22713) + 512
                                _26361 = mem[_26169]
                                mem[_16473 + (32 * _19065) + (32 * _22713) + 548] = mem[_26169]
                                mem[_16473 + (32 * _19065) + (32 * _22713) + 580 len ceil32(_26361)] = mem[_26169 + 32 len ceil32(_26361)]
                                if ceil32(_26361) <= _26361:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16473 + (32 * _19065) + (32 * _22713) + ceil32(_26361) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28473 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28473] == mem[_28473]
                                else:
                                    mem[_16473 + (32 * _19065) + (32 * _22713) + _26361 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16473 + (32 * _19065) + (32 * _22713) + ceil32(_26361) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28665 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28665] == mem[_28665]
        else:
            if uint8(cd[36]):
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 551] = msg.sender
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 583] = uint8(cd[36])
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 615] = cd[68]
                require ext_code.size(feeManagerAddress)
                call feeManagerAddress.0x156d0c19 with:
                     gas gas_remaining wei
                    args msg.sender, cd[36] << 248, cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if msg.value <= 0:
                    if msg.value < 0:
                        revert with 0, 'TX_UNDERPRICED'
                    mem[96] = msg.sender
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 547] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 611] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 643] = 64
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 675] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707 len 0] = None
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 579] = 96
                    mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707
                    mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 579
                    if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                        revert with 'NH{q', 50
                    if address(('cd', 4)[3]) != mem[588 len 20]:
                        revert with 0, 'ERR_PATH'
                    if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                        revert with 'NH{q', 17
                    if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                        revert with 'NH{q', 50
                    if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                        revert with 0, 'ERR_PATH'
                    if ('cd', 4)[2] > 2:
                        revert with 'NH{q', 33
                    if not ('cd', 4)[2]:
                        if ('cd', 4)[8] <= block.timestamp:
                            revert with 0, 'ERR_EXPIRY'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                            revert with 0, 'INVALID_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                            revert with 0, 'INVALID_PATH'
                        idx = 0
                        s = mem[128]
                        while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                            if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                revert with 'NH{q', 50
                            _15806 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                            if idx >= mem[544]:
                                revert with 'NH{q', 50
                            _15999 = mem[(32 * idx) + 576]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[544]:
                                revert with 'NH{q', 50
                            _16863 = mem[(32 * idx + 1) + 576]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = address(_15999)
                            mem[mem[64] + 68] = address(_16863)
                            require ext_code.size(address(_15806))
                            staticcall address(_15806).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args s, address(_15999), address(_16863)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17822 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_17822] == mem[_17822]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_17822]
                            continue 
                        if mem[128] + (_18110 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                            revert with 0, 'ERR_CURRENT_AMT'
                        if mem[192] > 2:
                            revert with 'NH{q', 33
                        if mem[192]:
                            _16383 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            _18399 = mem[288]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18783 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _18975 = mem[_18783]
                            mem[mem[64] + 484] = mem[_18783]
                            idx = 0
                            s = _18783 + 32
                            t = mem[64] + 516
                            while idx < _18975:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22431 = mem[_18399 + 64]
                            mem[_16383 + 452] = (32 * _18975) + 128
                            _22623 = mem[_22431]
                            mem[_16383 + (32 * _18975) + 516] = mem[_22431]
                            idx = 0
                            s = _22431 + 32
                            t = _16383 + (32 * _18975) + 548
                            while idx < _22623:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16383 + 260] = mem[320]
                            mem[_16383 + 292] = mem[352]
                            mem[_16383 + 324] = mem[384]
                            _26079 = mem[416]
                            mem[_16383 + 356] = (32 * _18975) + (32 * _22623) + 512
                            _26271 = mem[_26079]
                            mem[_16383 + (32 * _18975) + (32 * _22623) + 548] = mem[_26079]
                            mem[_16383 + (32 * _18975) + (32 * _22623) + 580 len ceil32(_26271)] = mem[_26079 + 32 len ceil32(_26271)]
                            if ceil32(_26271) <= _26271:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16383 + (32 * _18975) + (32 * _22623) + ceil32(_26271) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28383 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28383] == mem[_28383]
                            else:
                                mem[_16383 + (32 * _18975) + (32 * _22623) + _26271 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16383 + (32 * _18975) + (32 * _22623) + ceil32(_26271) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28575 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28575] == mem[_28575]
                        else:
                            _16286 = mem[128]
                            _16382 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            _18398 = mem[288]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18782 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _18974 = mem[_18782]
                            mem[mem[64] + 484] = mem[_18782]
                            idx = 0
                            s = _18782 + 32
                            t = mem[64] + 516
                            while idx < _18974:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22430 = mem[_18398 + 64]
                            mem[_16382 + 452] = (32 * _18974) + 128
                            _22622 = mem[_22430]
                            mem[_16382 + (32 * _18974) + 516] = mem[_22430]
                            idx = 0
                            s = _22430 + 32
                            t = _16382 + (32 * _18974) + 548
                            while idx < _22622:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16382 + 260] = mem[320]
                            mem[_16382 + 292] = mem[352]
                            mem[_16382 + 324] = mem[384]
                            _26078 = mem[416]
                            mem[_16382 + 356] = (32 * _18974) + (32 * _22622) + 512
                            _26270 = mem[_26078]
                            mem[_16382 + (32 * _18974) + (32 * _22622) + 548] = mem[_26078]
                            mem[_16382 + (32 * _18974) + (32 * _22622) + 580 len ceil32(_26270)] = mem[_26078 + 32 len ceil32(_26270)]
                            if ceil32(_26270) <= _26270:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16286 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16382 + (32 * _18974) + (32 * _22622) + ceil32(_26270) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28382 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28382] == mem[_28382]
                            else:
                                mem[_16382 + (32 * _18974) + (32 * _22622) + _26270 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16286 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16382 + (32 * _18974) + (32 * _22622) + ceil32(_26270) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28574 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28574] == mem[_28574]
                    else:
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 711] = msg.sender
                        require ext_code.size(address(('cd', 4)[3]))
                        staticcall address(('cd', 4)[3]).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ('cd', 4)[0]:
                            revert with 0, 'ERR_BALANCE'
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 711] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 743] = coreAddress
                        require ext_code.size(address(('cd', 4)[3]))
                        staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(msg.sender), coreAddress
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 707
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ('cd', 4)[0]:
                            revert with 0, 'ERR_ALLOWANCE'
                        if ('cd', 4)[8] <= block.timestamp:
                            revert with 0, 'ERR_EXPIRY'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                            revert with 0, 'INVALID_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                            revert with 0, 'INVALID_PATH'
                        idx = 0
                        s = mem[128]
                        while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                            if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                revert with 'NH{q', 50
                            _15808 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                            if idx >= mem[544]:
                                revert with 'NH{q', 50
                            _16001 = mem[(32 * idx) + 576]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[544]:
                                revert with 'NH{q', 50
                            _16866 = mem[(32 * idx + 1) + 576]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = address(_16001)
                            mem[mem[64] + 68] = address(_16866)
                            require ext_code.size(address(_15808))
                            staticcall address(_15808).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args s, address(_16001), address(_16866)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17823 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_17823] == mem[_17823]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_17823]
                            continue 
                        if mem[128] + (_18111 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                            revert with 0, 'ERR_CURRENT_AMT'
                        if mem[192] > 2:
                            revert with 'NH{q', 33
                        if mem[192]:
                            _16385 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18785 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _18977 = mem[_18785]
                            mem[mem[64] + 484] = mem[_18785]
                            idx = 0
                            s = _18785 + 32
                            t = mem[64] + 516
                            while idx < _18977:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22433 = mem[mem[288] + 64]
                            mem[mem[64] + 452] = (32 * _18977) + 128
                            _22625 = mem[_22433]
                            mem[mem[64] + (32 * _18977) + 516] = mem[_22433]
                            idx = 0
                            s = _22433 + 32
                            t = mem[64] + (32 * _18977) + 548
                            while idx < _22625:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16385 + 260] = mem[320]
                            mem[_16385 + 292] = mem[352]
                            mem[_16385 + 324] = mem[384]
                            _26081 = mem[416]
                            mem[_16385 + 356] = (32 * _18977) + (32 * _22625) + 512
                            _26273 = mem[_26081]
                            mem[_16385 + (32 * _18977) + (32 * _22625) + 548] = mem[_26081]
                            mem[_16385 + (32 * _18977) + (32 * _22625) + 580 len ceil32(_26273)] = mem[_26081 + 32 len ceil32(_26273)]
                            if ceil32(_26273) <= _26273:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16385 + (32 * _18977) + (32 * _22625) + ceil32(_26273) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28385 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28385] == mem[_28385]
                            else:
                                mem[_16385 + (32 * _18977) + (32 * _22625) + _26273 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16385 + (32 * _18977) + (32 * _22625) + ceil32(_26273) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28577 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28577] == mem[_28577]
                        else:
                            _16287 = mem[128]
                            _16384 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18784 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _18976 = mem[_18784]
                            mem[mem[64] + 484] = mem[_18784]
                            idx = 0
                            s = _18784 + 32
                            t = mem[64] + 516
                            while idx < _18976:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22432 = mem[mem[288] + 64]
                            mem[mem[64] + 452] = (32 * _18976) + 128
                            _22624 = mem[_22432]
                            mem[mem[64] + (32 * _18976) + 516] = mem[_22432]
                            idx = 0
                            s = _22432 + 32
                            t = mem[64] + (32 * _18976) + 548
                            while idx < _22624:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16384 + 260] = mem[320]
                            mem[_16384 + 292] = mem[352]
                            mem[_16384 + 324] = mem[384]
                            _26080 = mem[416]
                            mem[_16384 + 356] = (32 * _18976) + (32 * _22624) + 512
                            _26272 = mem[_26080]
                            mem[_16384 + (32 * _18976) + (32 * _22624) + 548] = mem[_26080]
                            mem[_16384 + (32 * _18976) + (32 * _22624) + 580 len ceil32(_26272)] = mem[_26080 + 32 len ceil32(_26272)]
                            if ceil32(_26272) <= _26272:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16287 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16384 + (32 * _18976) + (32 * _22624) + ceil32(_26272) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28384 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28384] == mem[_28384]
                            else:
                                mem[_16384 + (32 * _18976) + (32 * _22624) + _26272 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16287 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16384 + (32 * _18976) + (32 * _22624) + ceil32(_26272) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28576 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28576] == mem[_28576]
                else:
                    if msg.value < 0:
                        revert with 'NH{q', 17
                    call msg.sender with:
                       value msg.value wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FEE_REFUND_FAILED'
                        mem[96] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 547] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 611] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 643] = 64
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 675] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707 len 0] = None
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 579] = 96
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707
                        mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 579
                        if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[3]) != mem[588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if ('cd', 4)[2] > 2:
                            revert with 'NH{q', 33
                        if not ('cd', 4)[2]:
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15814 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16007 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _16875 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16007)
                                mem[mem[64] + 68] = address(_16875)
                                require ext_code.size(address(_15814))
                                staticcall address(_15814).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16007), address(_16875)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17826 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17826] == mem[_17826]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17826]
                                continue 
                            if mem[128] + (_18114 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16391 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18407 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18791 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _18983 = mem[_18791]
                                mem[mem[64] + 484] = mem[_18791]
                                idx = 0
                                s = _18791 + 32
                                t = mem[64] + 516
                                while idx < _18983:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22439 = mem[_18407 + 64]
                                mem[_16391 + 452] = (32 * _18983) + 128
                                _22631 = mem[_22439]
                                mem[_16391 + (32 * _18983) + 516] = mem[_22439]
                                idx = 0
                                s = _22439 + 32
                                t = _16391 + (32 * _18983) + 548
                                while idx < _22631:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16391 + 260] = mem[320]
                                mem[_16391 + 292] = mem[352]
                                mem[_16391 + 324] = mem[384]
                                _26087 = mem[416]
                                mem[_16391 + 356] = (32 * _18983) + (32 * _22631) + 512
                                _26279 = mem[_26087]
                                mem[_16391 + (32 * _18983) + (32 * _22631) + 548] = mem[_26087]
                                mem[_16391 + (32 * _18983) + (32 * _22631) + 580 len ceil32(_26279)] = mem[_26087 + 32 len ceil32(_26279)]
                                var386001 = ceil32(_26279)
                                if ceil32(_26279) <= _26279:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16391 + (32 * _18983) + (32 * _22631) + ceil32(_26279) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28391 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28391] == mem[_28391]
                                else:
                                    mem[_16391 + (32 * _18983) + (32 * _22631) + _26279 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16391 + (32 * _18983) + (32 * _22631) + ceil32(_26279) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28583 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28583] == mem[_28583]
                            else:
                                _16290 = mem[128]
                                _16390 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18406 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18790 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _18982 = mem[_18790]
                                mem[mem[64] + 484] = mem[_18790]
                                idx = 0
                                s = _18790 + 32
                                t = mem[64] + 516
                                while idx < _18982:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22438 = mem[_18406 + 64]
                                mem[_16390 + 452] = (32 * _18982) + 128
                                _22630 = mem[_22438]
                                mem[_16390 + (32 * _18982) + 516] = mem[_22438]
                                idx = 0
                                s = _22438 + 32
                                t = _16390 + (32 * _18982) + 548
                                while idx < _22630:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16390 + 260] = mem[320]
                                mem[_16390 + 292] = mem[352]
                                mem[_16390 + 324] = mem[384]
                                _26086 = mem[416]
                                mem[_16390 + 356] = (32 * _18982) + (32 * _22630) + 512
                                _26278 = mem[_26086]
                                mem[_16390 + (32 * _18982) + (32 * _22630) + 548] = mem[_26086]
                                mem[_16390 + (32 * _18982) + (32 * _22630) + 580 len ceil32(_26278)] = mem[_26086 + 32 len ceil32(_26278)]
                                var386001 = ceil32(_26278)
                                if ceil32(_26278) <= _26278:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16290 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16390 + (32 * _18982) + (32 * _22630) + ceil32(_26278) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28390 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28390] == mem[_28390]
                                else:
                                    mem[_16390 + (32 * _18982) + (32 * _22630) + _26278 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16290 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16390 + (32 * _18982) + (32 * _22630) + ceil32(_26278) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28582 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28582] == mem[_28582]
                        else:
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 711] = msg.sender
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_BALANCE'
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 711] = msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 743] = coreAddress
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(msg.sender), coreAddress
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 707
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_ALLOWANCE'
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15816 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16009 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _16878 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16009)
                                mem[mem[64] + 68] = address(_16878)
                                require ext_code.size(address(_15816))
                                staticcall address(_15816).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16009), address(_16878)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17827 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17827] == mem[_17827]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17827]
                                continue 
                            if mem[128] + (_18115 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16393 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18409 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18793 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _18985 = mem[_18793]
                                mem[mem[64] + 484] = mem[_18793]
                                idx = 0
                                s = _18793 + 32
                                t = mem[64] + 516
                                while idx < _18985:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22441 = mem[_18409 + 64]
                                mem[_16393 + 452] = (32 * _18985) + 128
                                _22633 = mem[_22441]
                                mem[_16393 + (32 * _18985) + 516] = mem[_22441]
                                idx = 0
                                s = _22441 + 32
                                t = _16393 + (32 * _18985) + 548
                                while idx < _22633:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16393 + 260] = mem[320]
                                mem[_16393 + 292] = mem[352]
                                mem[_16393 + 324] = mem[384]
                                _26089 = mem[416]
                                mem[_16393 + 356] = (32 * _18985) + (32 * _22633) + 512
                                _26281 = mem[_26089]
                                mem[_16393 + (32 * _18985) + (32 * _22633) + 548] = mem[_26089]
                                mem[_16393 + (32 * _18985) + (32 * _22633) + 580 len ceil32(_26281)] = mem[_26089 + 32 len ceil32(_26281)]
                                var435001 = ceil32(_26281)
                                if ceil32(_26281) <= _26281:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16393 + (32 * _18985) + (32 * _22633) + ceil32(_26281) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28393 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28393] == mem[_28393]
                                else:
                                    mem[_16393 + (32 * _18985) + (32 * _22633) + _26281 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16393 + (32 * _18985) + (32 * _22633) + ceil32(_26281) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28585 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28585] == mem[_28585]
                            else:
                                _16291 = mem[128]
                                _16392 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18408 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18792 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _18984 = mem[_18792]
                                mem[mem[64] + 484] = mem[_18792]
                                idx = 0
                                s = _18792 + 32
                                t = mem[64] + 516
                                while idx < _18984:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22440 = mem[_18408 + 64]
                                mem[_16392 + 452] = (32 * _18984) + 128
                                _22632 = mem[_22440]
                                mem[_16392 + (32 * _18984) + 516] = mem[_22440]
                                idx = 0
                                s = _22440 + 32
                                t = _16392 + (32 * _18984) + 548
                                while idx < _22632:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16392 + 260] = mem[320]
                                mem[_16392 + 292] = mem[352]
                                mem[_16392 + 324] = mem[384]
                                _26088 = mem[416]
                                mem[_16392 + 356] = (32 * _18984) + (32 * _22632) + 512
                                _26280 = mem[_26088]
                                mem[_16392 + (32 * _18984) + (32 * _22632) + 548] = mem[_26088]
                                mem[_16392 + (32 * _18984) + (32 * _22632) + 580 len ceil32(_26280)] = mem[_26088 + 32 len ceil32(_26280)]
                                var435001 = ceil32(_26280)
                                if ceil32(_26280) <= _26280:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16291 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16392 + (32 * _18984) + (32 * _22632) + ceil32(_26280) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28392 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28392] == mem[_28392]
                                else:
                                    mem[_16392 + (32 * _18984) + (32 * _22632) + _26280 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16291 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16392 + (32 * _18984) + (32 * _22632) + ceil32(_26280) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28584 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28584] == mem[_28584]
                    else:
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 547] = return_data.size
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 579 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FEE_REFUND_FAILED'
                        mem[96] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 548] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 612] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 644] = 64
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 676] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 708 len 0] = None
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 580] = 96
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 708
                        mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 580
                        if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[3]) != mem[588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if ('cd', 4)[2] > 2:
                            revert with 'NH{q', 33
                        if not ('cd', 4)[2]:
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15822 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16015 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _16887 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16015)
                                mem[mem[64] + 68] = address(_16887)
                                require ext_code.size(address(_15822))
                                staticcall address(_15822).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16015), address(_16887)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17830 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17830] == mem[_17830]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17830]
                                continue 
                            if mem[128] + (_18118 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16399 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18415 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18799 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _18991 = mem[_18799]
                                mem[mem[64] + 484] = mem[_18799]
                                idx = 0
                                s = _18799 + 32
                                t = mem[64] + 516
                                while idx < _18991:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22447 = mem[_18415 + 64]
                                mem[_16399 + 452] = (32 * _18991) + 128
                                _22639 = mem[_22447]
                                mem[_16399 + (32 * _18991) + 516] = mem[_22447]
                                idx = 0
                                s = _22447 + 32
                                t = _16399 + (32 * _18991) + 548
                                while idx < _22639:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16399 + 260] = mem[320]
                                mem[_16399 + 292] = mem[352]
                                mem[_16399 + 324] = mem[384]
                                _26095 = mem[416]
                                mem[_16399 + 356] = (32 * _18991) + (32 * _22639) + 512
                                _26287 = mem[_26095]
                                mem[_16399 + (32 * _18991) + (32 * _22639) + 548] = mem[_26095]
                                mem[_16399 + (32 * _18991) + (32 * _22639) + 580 len ceil32(_26287)] = mem[_26095 + 32 len ceil32(_26287)]
                                var386001 = ceil32(_26287)
                                if ceil32(_26287) <= _26287:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16399 + (32 * _18991) + (32 * _22639) + ceil32(_26287) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28399 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28399] == mem[_28399]
                                else:
                                    mem[_16399 + (32 * _18991) + (32 * _22639) + _26287 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16399 + (32 * _18991) + (32 * _22639) + ceil32(_26287) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28591 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28591] == mem[_28591]
                            else:
                                _16294 = mem[128]
                                _16398 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18414 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18798 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _18990 = mem[_18798]
                                mem[mem[64] + 484] = mem[_18798]
                                idx = 0
                                s = _18798 + 32
                                t = mem[64] + 516
                                while idx < _18990:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22446 = mem[_18414 + 64]
                                mem[_16398 + 452] = (32 * _18990) + 128
                                _22638 = mem[_22446]
                                mem[_16398 + (32 * _18990) + 516] = mem[_22446]
                                idx = 0
                                s = _22446 + 32
                                t = _16398 + (32 * _18990) + 548
                                while idx < _22638:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16398 + 260] = mem[320]
                                mem[_16398 + 292] = mem[352]
                                mem[_16398 + 324] = mem[384]
                                _26094 = mem[416]
                                mem[_16398 + 356] = (32 * _18990) + (32 * _22638) + 512
                                _26286 = mem[_26094]
                                mem[_16398 + (32 * _18990) + (32 * _22638) + 548] = mem[_26094]
                                mem[_16398 + (32 * _18990) + (32 * _22638) + 580 len ceil32(_26286)] = mem[_26094 + 32 len ceil32(_26286)]
                                var386001 = ceil32(_26286)
                                if ceil32(_26286) <= _26286:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16294 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16398 + (32 * _18990) + (32 * _22638) + ceil32(_26286) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28398 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28398] == mem[_28398]
                                else:
                                    mem[_16398 + (32 * _18990) + (32 * _22638) + _26286 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16294 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16398 + (32 * _18990) + (32 * _22638) + ceil32(_26286) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28590 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28590] == mem[_28590]
                        else:
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 712] = msg.sender
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 708] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_BALANCE'
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 712] = msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 744] = coreAddress
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(msg.sender), coreAddress
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 708] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 708
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_ALLOWANCE'
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15824 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16017 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _16890 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16017)
                                mem[mem[64] + 68] = address(_16890)
                                require ext_code.size(address(_15824))
                                staticcall address(_15824).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16017), address(_16890)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17831 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17831] == mem[_17831]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17831]
                                continue 
                            if mem[128] + (_18119 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16401 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18801 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _18993 = mem[_18801]
                                mem[mem[64] + 484] = mem[_18801]
                                idx = 0
                                s = _18801 + 32
                                t = mem[64] + 516
                                while idx < _18993:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22449 = mem[mem[288] + 64]
                                mem[mem[64] + 452] = (32 * _18993) + 128
                                _22641 = mem[_22449]
                                mem[mem[64] + (32 * _18993) + 516] = mem[_22449]
                                idx = 0
                                s = _22449 + 32
                                t = mem[64] + (32 * _18993) + 548
                                while idx < _22641:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16401 + 260] = mem[320]
                                mem[_16401 + 292] = mem[352]
                                mem[_16401 + 324] = mem[384]
                                _26097 = mem[416]
                                mem[_16401 + 356] = (32 * _18993) + (32 * _22641) + 512
                                _26289 = mem[_26097]
                                mem[_16401 + (32 * _18993) + (32 * _22641) + 548] = mem[_26097]
                                mem[_16401 + (32 * _18993) + (32 * _22641) + 580 len ceil32(_26289)] = mem[_26097 + 32 len ceil32(_26289)]
                                var435001 = ceil32(_26289)
                                if ceil32(_26289) <= _26289:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16401 + (32 * _18993) + (32 * _22641) + ceil32(_26289) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28401 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28401] == mem[_28401]
                                else:
                                    mem[_16401 + (32 * _18993) + (32 * _22641) + _26289 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16401 + (32 * _18993) + (32 * _22641) + ceil32(_26289) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28593 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28593] == mem[_28593]
                            else:
                                _16295 = mem[128]
                                _16400 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18416 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18800 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _18992 = mem[_18800]
                                mem[mem[64] + 484] = mem[_18800]
                                idx = 0
                                s = _18800 + 32
                                t = mem[64] + 516
                                while idx < _18992:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22448 = mem[_18416 + 64]
                                mem[_16400 + 452] = (32 * _18992) + 128
                                _22640 = mem[_22448]
                                mem[_16400 + (32 * _18992) + 516] = mem[_22448]
                                idx = 0
                                s = _22448 + 32
                                t = _16400 + (32 * _18992) + 548
                                while idx < _22640:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16400 + 260] = mem[320]
                                mem[_16400 + 292] = mem[352]
                                mem[_16400 + 324] = mem[384]
                                _26096 = mem[416]
                                mem[_16400 + 356] = (32 * _18992) + (32 * _22640) + 512
                                _26288 = mem[_26096]
                                mem[_16400 + (32 * _18992) + (32 * _22640) + 548] = mem[_26096]
                                mem[_16400 + (32 * _18992) + (32 * _22640) + 580 len ceil32(_26288)] = mem[_26096 + 32 len ceil32(_26288)]
                                var435001 = ceil32(_26288)
                                if ceil32(_26288) <= _26288:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16295 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16400 + (32 * _18992) + (32 * _22640) + ceil32(_26288) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28400 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28400] == mem[_28400]
                                else:
                                    mem[_16400 + (32 * _18992) + (32 * _22640) + _26288 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16295 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16400 + (32 * _18992) + (32 * _22640) + ceil32(_26288) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28592 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28592] == mem[_28592]
            else:
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 551] = this.address
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 583] = uint8(cd[36])
                require ext_code.size(feeManagerAddress)
                staticcall feeManagerAddress.0x2506d6f0 with:
                        gas gas_remaining wei
                       args address(this.address), uint8(cd[36])
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 547] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > msg.value:
                    revert with 0, 'TX_UNDERPRICED'
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 551] = msg.sender
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 583] = uint8(cd[36])
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 615] = cd[68]
                require ext_code.size(feeManagerAddress)
                call feeManagerAddress.0x156d0c19 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args msg.sender, cd[36] << 248, cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if msg.value < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if msg.value - ext_call.return_data[0] <= 0:
                    if msg.value - ext_call.return_data[0] < 0:
                        revert with 0, 'TX_UNDERPRICED'
                    mem[96] = msg.sender
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 547] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 611] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 643] = 64
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 675] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707 len 0] = None
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 579] = 96
                    mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707
                    mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 579
                    if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                        revert with 'NH{q', 50
                    if address(('cd', 4)[3]) != mem[588 len 20]:
                        revert with 0, 'ERR_PATH'
                    if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                        revert with 'NH{q', 17
                    if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                        revert with 'NH{q', 50
                    if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                        revert with 0, 'ERR_PATH'
                    if ('cd', 4)[2] > 2:
                        revert with 'NH{q', 33
                    if not ('cd', 4)[2]:
                        if ('cd', 4)[8] <= block.timestamp:
                            revert with 0, 'ERR_EXPIRY'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                            revert with 0, 'INVALID_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                            revert with 0, 'INVALID_PATH'
                        idx = 0
                        s = mem[128]
                        while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                            if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                revert with 'NH{q', 50
                            _15830 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                            if idx >= mem[544]:
                                revert with 'NH{q', 50
                            _16023 = mem[(32 * idx) + 576]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[544]:
                                revert with 'NH{q', 50
                            _16899 = mem[(32 * idx + 1) + 576]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = address(_16023)
                            mem[mem[64] + 68] = address(_16899)
                            require ext_code.size(address(_15830))
                            staticcall address(_15830).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args s, address(_16023), address(_16899)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17834 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_17834] == mem[_17834]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_17834]
                            continue 
                        if mem[128] + (_18122 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                            revert with 0, 'ERR_CURRENT_AMT'
                        if mem[192] > 2:
                            revert with 'NH{q', 33
                        if mem[192]:
                            _16407 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            _18423 = mem[288]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18807 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _18999 = mem[_18807]
                            mem[mem[64] + 484] = mem[_18807]
                            idx = 0
                            s = _18807 + 32
                            t = mem[64] + 516
                            while idx < _18999:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22455 = mem[_18423 + 64]
                            mem[_16407 + 452] = (32 * _18999) + 128
                            _22647 = mem[_22455]
                            mem[_16407 + (32 * _18999) + 516] = mem[_22455]
                            idx = 0
                            s = _22455 + 32
                            t = _16407 + (32 * _18999) + 548
                            while idx < _22647:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16407 + 260] = mem[320]
                            mem[_16407 + 292] = mem[352]
                            mem[_16407 + 324] = mem[384]
                            _26103 = mem[416]
                            mem[_16407 + 356] = (32 * _18999) + (32 * _22647) + 512
                            _26295 = mem[_26103]
                            mem[_16407 + (32 * _18999) + (32 * _22647) + 548] = mem[_26103]
                            mem[_16407 + (32 * _18999) + (32 * _22647) + 580 len ceil32(_26295)] = mem[_26103 + 32 len ceil32(_26295)]
                            if ceil32(_26295) <= _26295:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16407 + (32 * _18999) + (32 * _22647) + ceil32(_26295) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28407 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28407] == mem[_28407]
                            else:
                                mem[_16407 + (32 * _18999) + (32 * _22647) + _26295 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16407 + (32 * _18999) + (32 * _22647) + ceil32(_26295) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28599 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28599] == mem[_28599]
                        else:
                            _16298 = mem[128]
                            _16406 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            _18422 = mem[288]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18806 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _18998 = mem[_18806]
                            mem[mem[64] + 484] = mem[_18806]
                            idx = 0
                            s = _18806 + 32
                            t = mem[64] + 516
                            while idx < _18998:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22454 = mem[_18422 + 64]
                            mem[_16406 + 452] = (32 * _18998) + 128
                            _22646 = mem[_22454]
                            mem[_16406 + (32 * _18998) + 516] = mem[_22454]
                            idx = 0
                            s = _22454 + 32
                            t = _16406 + (32 * _18998) + 548
                            while idx < _22646:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16406 + 260] = mem[320]
                            mem[_16406 + 292] = mem[352]
                            mem[_16406 + 324] = mem[384]
                            _26102 = mem[416]
                            mem[_16406 + 356] = (32 * _18998) + (32 * _22646) + 512
                            _26294 = mem[_26102]
                            mem[_16406 + (32 * _18998) + (32 * _22646) + 548] = mem[_26102]
                            mem[_16406 + (32 * _18998) + (32 * _22646) + 580 len ceil32(_26294)] = mem[_26102 + 32 len ceil32(_26294)]
                            if ceil32(_26294) <= _26294:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16298 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16406 + (32 * _18998) + (32 * _22646) + ceil32(_26294) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28406 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28406] == mem[_28406]
                            else:
                                mem[_16406 + (32 * _18998) + (32 * _22646) + _26294 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16298 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16406 + (32 * _18998) + (32 * _22646) + ceil32(_26294) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28598 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28598] == mem[_28598]
                    else:
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 711] = msg.sender
                        require ext_code.size(address(('cd', 4)[3]))
                        staticcall address(('cd', 4)[3]).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ('cd', 4)[0]:
                            revert with 0, 'ERR_BALANCE'
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 711] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 743] = coreAddress
                        require ext_code.size(address(('cd', 4)[3]))
                        staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(msg.sender), coreAddress
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 707] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (4 * ceil32(return_data.size)) + 707
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ('cd', 4)[0]:
                            revert with 0, 'ERR_ALLOWANCE'
                        if ('cd', 4)[8] <= block.timestamp:
                            revert with 0, 'ERR_EXPIRY'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                            revert with 0, 'INVALID_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                            revert with 0, 'INVALID_PATH'
                        idx = 0
                        s = mem[128]
                        while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                            if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                revert with 'NH{q', 50
                            _15832 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                            if idx >= mem[544]:
                                revert with 'NH{q', 50
                            _16025 = mem[(32 * idx) + 576]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[544]:
                                revert with 'NH{q', 50
                            _16902 = mem[(32 * idx + 1) + 576]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = address(_16025)
                            mem[mem[64] + 68] = address(_16902)
                            require ext_code.size(address(_15832))
                            staticcall address(_15832).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args s, address(_16025), address(_16902)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17835 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_17835] == mem[_17835]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_17835]
                            continue 
                        if mem[128] + (_18123 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                            revert with 0, 'ERR_CURRENT_AMT'
                        if mem[192] > 2:
                            revert with 'NH{q', 33
                        if mem[192]:
                            _16409 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18809 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19001 = mem[_18809]
                            mem[mem[64] + 484] = mem[_18809]
                            idx = 0
                            s = _18809 + 32
                            t = mem[64] + 516
                            while idx < _19001:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22457 = mem[mem[288] + 64]
                            mem[mem[64] + 452] = (32 * _19001) + 128
                            _22649 = mem[_22457]
                            mem[mem[64] + (32 * _19001) + 516] = mem[_22457]
                            idx = 0
                            s = _22457 + 32
                            t = mem[64] + (32 * _19001) + 548
                            while idx < _22649:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16409 + 260] = mem[320]
                            mem[_16409 + 292] = mem[352]
                            mem[_16409 + 324] = mem[384]
                            _26105 = mem[416]
                            mem[_16409 + 356] = (32 * _19001) + (32 * _22649) + 512
                            _26297 = mem[_26105]
                            mem[_16409 + (32 * _19001) + (32 * _22649) + 548] = mem[_26105]
                            mem[_16409 + (32 * _19001) + (32 * _22649) + 580 len ceil32(_26297)] = mem[_26105 + 32 len ceil32(_26297)]
                            if ceil32(_26297) <= _26297:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16409 + (32 * _19001) + (32 * _22649) + ceil32(_26297) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28409 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28409] == mem[_28409]
                            else:
                                mem[_16409 + (32 * _19001) + (32 * _22649) + _26297 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16409 + (32 * _19001) + (32 * _22649) + ceil32(_26297) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28601 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28601] == mem[_28601]
                        else:
                            _16299 = mem[128]
                            _16408 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            _18424 = mem[288]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18808 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19000 = mem[_18808]
                            mem[mem[64] + 484] = mem[_18808]
                            idx = 0
                            s = _18808 + 32
                            t = mem[64] + 516
                            while idx < _19000:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22456 = mem[_18424 + 64]
                            mem[_16408 + 452] = (32 * _19000) + 128
                            _22648 = mem[_22456]
                            mem[_16408 + (32 * _19000) + 516] = mem[_22456]
                            idx = 0
                            s = _22456 + 32
                            t = _16408 + (32 * _19000) + 548
                            while idx < _22648:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16408 + 260] = mem[320]
                            mem[_16408 + 292] = mem[352]
                            mem[_16408 + 324] = mem[384]
                            _26104 = mem[416]
                            mem[_16408 + 356] = (32 * _19000) + (32 * _22648) + 512
                            _26296 = mem[_26104]
                            mem[_16408 + (32 * _19000) + (32 * _22648) + 548] = mem[_26104]
                            mem[_16408 + (32 * _19000) + (32 * _22648) + 580 len ceil32(_26296)] = mem[_26104 + 32 len ceil32(_26296)]
                            if ceil32(_26296) <= _26296:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16299 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16408 + (32 * _19000) + (32 * _22648) + ceil32(_26296) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28408 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28408] == mem[_28408]
                            else:
                                mem[_16408 + (32 * _19000) + (32 * _22648) + _26296 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16299 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16408 + (32 * _19000) + (32 * _22648) + ceil32(_26296) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28600 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28600] == mem[_28600]
                else:
                    if msg.value - ext_call.return_data[0] < 0:
                        revert with 'NH{q', 17
                    call msg.sender with:
                       value msg.value - ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FEE_REFUND_FAILED'
                        mem[96] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 547] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 611] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 643] = 64
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 675] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707 len 0] = None
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 579] = 96
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707
                        mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 579
                        if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[3]) != mem[588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if ('cd', 4)[2] > 2:
                            revert with 'NH{q', 33
                        if not ('cd', 4)[2]:
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15838 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16031 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _16911 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16031)
                                mem[mem[64] + 68] = address(_16911)
                                require ext_code.size(address(_15838))
                                staticcall address(_15838).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16031), address(_16911)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17838 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17838] == mem[_17838]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17838]
                                continue 
                            if mem[128] + (_18126 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16415 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18815 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19007 = mem[_18815]
                                mem[mem[64] + 484] = mem[_18815]
                                idx = 0
                                s = _18815 + 32
                                t = mem[64] + 516
                                while idx < _19007:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22463 = mem[mem[288] + 64]
                                mem[mem[64] + 452] = (32 * _19007) + 128
                                _22655 = mem[_22463]
                                mem[mem[64] + (32 * _19007) + 516] = mem[_22463]
                                idx = 0
                                s = _22463 + 32
                                t = mem[64] + (32 * _19007) + 548
                                while idx < _22655:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16415 + 260] = mem[320]
                                mem[_16415 + 292] = mem[352]
                                mem[_16415 + 324] = mem[384]
                                _26111 = mem[416]
                                mem[_16415 + 356] = (32 * _19007) + (32 * _22655) + 512
                                _26303 = mem[_26111]
                                mem[_16415 + (32 * _19007) + (32 * _22655) + 548] = mem[_26111]
                                mem[_16415 + (32 * _19007) + (32 * _22655) + 580 len ceil32(_26303)] = mem[_26111 + 32 len ceil32(_26303)]
                                if ceil32(_26303) <= _26303:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16415 + (32 * _19007) + (32 * _22655) + ceil32(_26303) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28415 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28415] == mem[_28415]
                                else:
                                    mem[_16415 + (32 * _19007) + (32 * _22655) + _26303 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16415 + (32 * _19007) + (32 * _22655) + ceil32(_26303) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28607 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28607] == mem[_28607]
                            else:
                                _16302 = mem[128]
                                _16414 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18430 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18814 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19006 = mem[_18814]
                                mem[mem[64] + 484] = mem[_18814]
                                idx = 0
                                s = _18814 + 32
                                t = mem[64] + 516
                                while idx < _19006:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22462 = mem[_18430 + 64]
                                mem[_16414 + 452] = (32 * _19006) + 128
                                _22654 = mem[_22462]
                                mem[_16414 + (32 * _19006) + 516] = mem[_22462]
                                idx = 0
                                s = _22462 + 32
                                t = _16414 + (32 * _19006) + 548
                                while idx < _22654:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16414 + 260] = mem[320]
                                mem[_16414 + 292] = mem[352]
                                mem[_16414 + 324] = mem[384]
                                _26110 = mem[416]
                                mem[_16414 + 356] = (32 * _19006) + (32 * _22654) + 512
                                _26302 = mem[_26110]
                                mem[_16414 + (32 * _19006) + (32 * _22654) + 548] = mem[_26110]
                                mem[_16414 + (32 * _19006) + (32 * _22654) + 580 len ceil32(_26302)] = mem[_26110 + 32 len ceil32(_26302)]
                                if ceil32(_26302) <= _26302:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16302 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16414 + (32 * _19006) + (32 * _22654) + ceil32(_26302) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28414 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28414] == mem[_28414]
                                else:
                                    mem[_16414 + (32 * _19006) + (32 * _22654) + _26302 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16302 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16414 + (32 * _19006) + (32 * _22654) + ceil32(_26302) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28606 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28606] == mem[_28606]
                        else:
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 711] = msg.sender
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_BALANCE'
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 711] = msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 743] = coreAddress
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(msg.sender), coreAddress
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 707] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (4 * ceil32(return_data.size)) + 707
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_ALLOWANCE'
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15840 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16033 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _16914 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16033)
                                mem[mem[64] + 68] = address(_16914)
                                require ext_code.size(address(_15840))
                                staticcall address(_15840).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16033), address(_16914)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17839 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17839] == mem[_17839]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17839]
                                continue 
                            if mem[128] + (_18127 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16417 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18433 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18817 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19009 = mem[_18817]
                                mem[mem[64] + 484] = mem[_18817]
                                idx = 0
                                s = _18817 + 32
                                t = mem[64] + 516
                                while idx < _19009:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22465 = mem[_18433 + 64]
                                mem[_16417 + 452] = (32 * _19009) + 128
                                _22657 = mem[_22465]
                                mem[_16417 + (32 * _19009) + 516] = mem[_22465]
                                idx = 0
                                s = _22465 + 32
                                t = _16417 + (32 * _19009) + 548
                                while idx < _22657:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16417 + 260] = mem[320]
                                mem[_16417 + 292] = mem[352]
                                mem[_16417 + 324] = mem[384]
                                _26113 = mem[416]
                                mem[_16417 + 356] = (32 * _19009) + (32 * _22657) + 512
                                _26305 = mem[_26113]
                                mem[_16417 + (32 * _19009) + (32 * _22657) + 548] = mem[_26113]
                                mem[_16417 + (32 * _19009) + (32 * _22657) + 580 len ceil32(_26305)] = mem[_26113 + 32 len ceil32(_26305)]
                                if ceil32(_26305) <= _26305:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16417 + (32 * _19009) + (32 * _22657) + ceil32(_26305) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28417 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28417] == mem[_28417]
                                else:
                                    mem[_16417 + (32 * _19009) + (32 * _22657) + _26305 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16417 + (32 * _19009) + (32 * _22657) + ceil32(_26305) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28609 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28609] == mem[_28609]
                            else:
                                _16303 = mem[128]
                                _16416 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18432 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18816 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19008 = mem[_18816]
                                mem[mem[64] + 484] = mem[_18816]
                                idx = 0
                                s = _18816 + 32
                                t = mem[64] + 516
                                while idx < _19008:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22464 = mem[_18432 + 64]
                                mem[_16416 + 452] = (32 * _19008) + 128
                                _22656 = mem[_22464]
                                mem[_16416 + (32 * _19008) + 516] = mem[_22464]
                                idx = 0
                                s = _22464 + 32
                                t = _16416 + (32 * _19008) + 548
                                while idx < _22656:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16416 + 260] = mem[320]
                                mem[_16416 + 292] = mem[352]
                                mem[_16416 + 324] = mem[384]
                                _26112 = mem[416]
                                mem[_16416 + 356] = (32 * _19008) + (32 * _22656) + 512
                                _26304 = mem[_26112]
                                mem[_16416 + (32 * _19008) + (32 * _22656) + 548] = mem[_26112]
                                mem[_16416 + (32 * _19008) + (32 * _22656) + 580 len ceil32(_26304)] = mem[_26112 + 32 len ceil32(_26304)]
                                if ceil32(_26304) <= _26304:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16303 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16416 + (32 * _19008) + (32 * _22656) + ceil32(_26304) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28416 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28416] == mem[_28416]
                                else:
                                    mem[_16416 + (32 * _19008) + (32 * _22656) + _26304 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16303 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16416 + (32 * _19008) + (32 * _22656) + ceil32(_26304) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28608 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28608] == mem[_28608]
                    else:
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 547] = return_data.size
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 579 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FEE_REFUND_FAILED'
                        mem[96] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 548] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 612] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 644] = 64
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 676] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 708 len 0] = None
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 580] = 96
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 708
                        mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 580
                        if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[3]) != mem[588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if ('cd', 4)[2] > 2:
                            revert with 'NH{q', 33
                        if not ('cd', 4)[2]:
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15846 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16039 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _16923 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16039)
                                mem[mem[64] + 68] = address(_16923)
                                require ext_code.size(address(_15846))
                                staticcall address(_15846).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16039), address(_16923)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17842 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17842] == mem[_17842]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17842]
                                continue 
                            if mem[128] + (_18130 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16423 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18439 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18823 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19015 = mem[_18823]
                                mem[mem[64] + 484] = mem[_18823]
                                idx = 0
                                s = _18823 + 32
                                t = mem[64] + 516
                                while idx < _19015:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22471 = mem[_18439 + 64]
                                mem[_16423 + 452] = (32 * _19015) + 128
                                _22663 = mem[_22471]
                                mem[_16423 + (32 * _19015) + 516] = mem[_22471]
                                idx = 0
                                s = _22471 + 32
                                t = _16423 + (32 * _19015) + 548
                                while idx < _22663:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16423 + 260] = mem[320]
                                mem[_16423 + 292] = mem[352]
                                mem[_16423 + 324] = mem[384]
                                _26119 = mem[416]
                                mem[_16423 + 356] = (32 * _19015) + (32 * _22663) + 512
                                _26311 = mem[_26119]
                                mem[_16423 + (32 * _19015) + (32 * _22663) + 548] = mem[_26119]
                                mem[_16423 + (32 * _19015) + (32 * _22663) + 580 len ceil32(_26311)] = mem[_26119 + 32 len ceil32(_26311)]
                                if ceil32(_26311) <= _26311:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16423 + (32 * _19015) + (32 * _22663) + ceil32(_26311) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28423 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28423] == mem[_28423]
                                else:
                                    mem[_16423 + (32 * _19015) + (32 * _22663) + _26311 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16423 + (32 * _19015) + (32 * _22663) + ceil32(_26311) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28615 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28615] == mem[_28615]
                            else:
                                _16306 = mem[128]
                                _16422 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18438 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18822 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19014 = mem[_18822]
                                mem[mem[64] + 484] = mem[_18822]
                                idx = 0
                                s = _18822 + 32
                                t = mem[64] + 516
                                while idx < _19014:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22470 = mem[_18438 + 64]
                                mem[_16422 + 452] = (32 * _19014) + 128
                                _22662 = mem[_22470]
                                mem[_16422 + (32 * _19014) + 516] = mem[_22470]
                                idx = 0
                                s = _22470 + 32
                                t = _16422 + (32 * _19014) + 548
                                while idx < _22662:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16422 + 260] = mem[320]
                                mem[_16422 + 292] = mem[352]
                                mem[_16422 + 324] = mem[384]
                                _26118 = mem[416]
                                mem[_16422 + 356] = (32 * _19014) + (32 * _22662) + 512
                                _26310 = mem[_26118]
                                mem[_16422 + (32 * _19014) + (32 * _22662) + 548] = mem[_26118]
                                mem[_16422 + (32 * _19014) + (32 * _22662) + 580 len ceil32(_26310)] = mem[_26118 + 32 len ceil32(_26310)]
                                if ceil32(_26310) <= _26310:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16306 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16422 + (32 * _19014) + (32 * _22662) + ceil32(_26310) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28422 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28422] == mem[_28422]
                                else:
                                    mem[_16422 + (32 * _19014) + (32 * _22662) + _26310 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16306 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16422 + (32 * _19014) + (32 * _22662) + ceil32(_26310) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28614 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28614] == mem[_28614]
                        else:
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 712] = msg.sender
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 708] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_BALANCE'
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 712] = msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 744] = coreAddress
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(msg.sender), coreAddress
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 708] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 708
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_ALLOWANCE'
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15848 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16041 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _16926 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16041)
                                mem[mem[64] + 68] = address(_16926)
                                require ext_code.size(address(_15848))
                                staticcall address(_15848).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16041), address(_16926)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17843 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17843] == mem[_17843]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17843]
                                continue 
                            if mem[128] + (_18131 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16425 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18441 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18825 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19017 = mem[_18825]
                                mem[mem[64] + 484] = mem[_18825]
                                idx = 0
                                s = _18825 + 32
                                t = mem[64] + 516
                                while idx < _19017:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22473 = mem[_18441 + 64]
                                mem[_16425 + 452] = (32 * _19017) + 128
                                _22665 = mem[_22473]
                                mem[_16425 + (32 * _19017) + 516] = mem[_22473]
                                idx = 0
                                s = _22473 + 32
                                t = _16425 + (32 * _19017) + 548
                                while idx < _22665:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16425 + 260] = mem[320]
                                mem[_16425 + 292] = mem[352]
                                mem[_16425 + 324] = mem[384]
                                _26121 = mem[416]
                                mem[_16425 + 356] = (32 * _19017) + (32 * _22665) + 512
                                _26313 = mem[_26121]
                                mem[_16425 + (32 * _19017) + (32 * _22665) + 548] = mem[_26121]
                                mem[_16425 + (32 * _19017) + (32 * _22665) + 580 len ceil32(_26313)] = mem[_26121 + 32 len ceil32(_26313)]
                                if ceil32(_26313) <= _26313:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16425 + (32 * _19017) + (32 * _22665) + ceil32(_26313) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28425 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28425] == mem[_28425]
                                else:
                                    mem[_16425 + (32 * _19017) + (32 * _22665) + _26313 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16425 + (32 * _19017) + (32 * _22665) + ceil32(_26313) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28617 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28617] == mem[_28617]
                            else:
                                _16307 = mem[128]
                                _16424 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18440 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18824 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19016 = mem[_18824]
                                mem[mem[64] + 484] = mem[_18824]
                                idx = 0
                                s = _18824 + 32
                                t = mem[64] + 516
                                while idx < _19016:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22472 = mem[_18440 + 64]
                                mem[_16424 + 452] = (32 * _19016) + 128
                                _22664 = mem[_22472]
                                mem[_16424 + (32 * _19016) + 516] = mem[_22472]
                                idx = 0
                                s = _22472 + 32
                                t = _16424 + (32 * _19016) + 548
                                while idx < _22664:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16424 + 260] = mem[320]
                                mem[_16424 + 292] = mem[352]
                                mem[_16424 + 324] = mem[384]
                                _26120 = mem[416]
                                mem[_16424 + 356] = (32 * _19016) + (32 * _22664) + 512
                                _26312 = mem[_26120]
                                mem[_16424 + (32 * _19016) + (32 * _22664) + 548] = mem[_26120]
                                mem[_16424 + (32 * _19016) + (32 * _22664) + 580 len ceil32(_26312)] = mem[_26120 + 32 len ceil32(_26312)]
                                if ceil32(_26312) <= _26312:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16307 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16424 + (32 * _19016) + (32 * _22664) + ceil32(_26312) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28424 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28424] == mem[_28424]
                                else:
                                    mem[_16424 + (32 * _19016) + (32 * _22664) + _26312 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16307 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16424 + (32 * _19016) + (32 * _22664) + ceil32(_26312) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28616 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28616] == mem[_28616]
    else:
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[address(msg.sender)]
        require msg.sender == tx.origin
        if uint8(stor2.field_168):
            revert with 0, 'NON_REENTRANT'
        Mask(88, 0, stor2.field_168) = 1
        if ('cd', 4)[2] > 2:
            revert with 'NH{q', 33
        if ('cd', 4)[2]:
            if uint8(cd[36]):
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 551] = msg.sender
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 583] = uint8(cd[36])
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 615] = cd[68]
                require ext_code.size(feeManagerAddress)
                call feeManagerAddress.0x156d0c19 with:
                     gas gas_remaining wei
                    args msg.sender, cd[36] << 248, cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if msg.value <= 0:
                    if msg.value < 0:
                        revert with 0, 'TX_UNDERPRICED'
                    mem[96] = msg.sender
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 547] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 611] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 643] = 64
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 675] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707 len 0] = None
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 579] = 96
                    mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707
                    mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 579
                    if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                        revert with 'NH{q', 50
                    if address(('cd', 4)[3]) != mem[588 len 20]:
                        revert with 0, 'ERR_PATH'
                    if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                        revert with 'NH{q', 17
                    if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                        revert with 'NH{q', 50
                    if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                        revert with 0, 'ERR_PATH'
                    if ('cd', 4)[2] > 2:
                        revert with 'NH{q', 33
                    if not ('cd', 4)[2]:
                        if ('cd', 4)[8] <= block.timestamp:
                            revert with 0, 'ERR_EXPIRY'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                            revert with 0, 'INVALID_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                            revert with 0, 'INVALID_PATH'
                        idx = 0
                        s = mem[128]
                        while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                            if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                revert with 'NH{q', 50
                            _15902 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                            if idx >= mem[544]:
                                revert with 'NH{q', 50
                            _16095 = mem[(32 * idx) + 576]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[544]:
                                revert with 'NH{q', 50
                            _17007 = mem[(32 * idx + 1) + 576]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = address(_16095)
                            mem[mem[64] + 68] = address(_17007)
                            require ext_code.size(address(_15902))
                            staticcall address(_15902).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args s, address(_16095), address(_17007)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17870 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_17870] == mem[_17870]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_17870]
                            continue 
                        if mem[128] + (_18158 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                            revert with 0, 'ERR_CURRENT_AMT'
                        if mem[192] > 2:
                            revert with 'NH{q', 33
                        if mem[192]:
                            _16479 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            _18495 = mem[288]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18879 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19071 = mem[_18879]
                            mem[mem[64] + 484] = mem[_18879]
                            idx = 0
                            s = _18879 + 32
                            t = mem[64] + 516
                            while idx < _19071:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22527 = mem[_18495 + 64]
                            mem[_16479 + 452] = (32 * _19071) + 128
                            _22719 = mem[_22527]
                            mem[_16479 + (32 * _19071) + 516] = mem[_22527]
                            idx = 0
                            s = _22527 + 32
                            t = _16479 + (32 * _19071) + 548
                            while idx < _22719:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16479 + 260] = mem[320]
                            mem[_16479 + 292] = mem[352]
                            mem[_16479 + 324] = mem[384]
                            _26175 = mem[416]
                            mem[_16479 + 356] = (32 * _19071) + (32 * _22719) + 512
                            _26367 = mem[_26175]
                            mem[_16479 + (32 * _19071) + (32 * _22719) + 548] = mem[_26175]
                            mem[_16479 + (32 * _19071) + (32 * _22719) + 580 len ceil32(_26367)] = mem[_26175 + 32 len ceil32(_26367)]
                            var372001 = ceil32(_26367)
                            if ceil32(_26367) <= _26367:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16479 + (32 * _19071) + (32 * _22719) + ceil32(_26367) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28479 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28479] == mem[_28479]
                            else:
                                mem[_16479 + (32 * _19071) + (32 * _22719) + _26367 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16479 + (32 * _19071) + (32 * _22719) + ceil32(_26367) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28671 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28671] == mem[_28671]
                        else:
                            _16334 = mem[128]
                            _16478 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            _18494 = mem[288]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18878 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19070 = mem[_18878]
                            mem[mem[64] + 484] = mem[_18878]
                            idx = 0
                            s = _18878 + 32
                            t = mem[64] + 516
                            while idx < _19070:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22526 = mem[_18494 + 64]
                            mem[_16478 + 452] = (32 * _19070) + 128
                            _22718 = mem[_22526]
                            mem[_16478 + (32 * _19070) + 516] = mem[_22526]
                            idx = 0
                            s = _22526 + 32
                            t = _16478 + (32 * _19070) + 548
                            while idx < _22718:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16478 + 260] = mem[320]
                            mem[_16478 + 292] = mem[352]
                            mem[_16478 + 324] = mem[384]
                            _26174 = mem[416]
                            mem[_16478 + 356] = (32 * _19070) + (32 * _22718) + 512
                            _26366 = mem[_26174]
                            mem[_16478 + (32 * _19070) + (32 * _22718) + 548] = mem[_26174]
                            mem[_16478 + (32 * _19070) + (32 * _22718) + 580 len ceil32(_26366)] = mem[_26174 + 32 len ceil32(_26366)]
                            var372001 = ceil32(_26366)
                            if ceil32(_26366) <= _26366:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16334 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16478 + (32 * _19070) + (32 * _22718) + ceil32(_26366) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28478 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28478] == mem[_28478]
                            else:
                                mem[_16478 + (32 * _19070) + (32 * _22718) + _26366 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16334 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16478 + (32 * _19070) + (32 * _22718) + ceil32(_26366) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28670 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28670] == mem[_28670]
                    else:
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 711] = msg.sender
                        require ext_code.size(address(('cd', 4)[3]))
                        staticcall address(('cd', 4)[3]).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ('cd', 4)[0]:
                            revert with 0, 'ERR_BALANCE'
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 711] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 743] = coreAddress
                        require ext_code.size(address(('cd', 4)[3]))
                        staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(msg.sender), coreAddress
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 707
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ('cd', 4)[0]:
                            revert with 0, 'ERR_ALLOWANCE'
                        if ('cd', 4)[8] <= block.timestamp:
                            revert with 0, 'ERR_EXPIRY'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                            revert with 0, 'INVALID_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                            revert with 0, 'INVALID_PATH'
                        idx = 0
                        s = mem[128]
                        while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                            if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                revert with 'NH{q', 50
                            _15904 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                            if idx >= mem[544]:
                                revert with 'NH{q', 50
                            _16097 = mem[(32 * idx) + 576]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[544]:
                                revert with 'NH{q', 50
                            _17010 = mem[(32 * idx + 1) + 576]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = address(_16097)
                            mem[mem[64] + 68] = address(_17010)
                            require ext_code.size(address(_15904))
                            staticcall address(_15904).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args s, address(_16097), address(_17010)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17871 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_17871] == mem[_17871]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_17871]
                            continue 
                        if mem[128] + (_18159 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                            revert with 0, 'ERR_CURRENT_AMT'
                        if mem[192] > 2:
                            revert with 'NH{q', 33
                        if not mem[192]:
                            _16335 = mem[128]
                            _16480 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18880 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19072 = mem[_18880]
                            mem[mem[64] + 484] = mem[_18880]
                            idx = 0
                            s = _18880 + 32
                            t = mem[64] + 516
                            while idx < _19072:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22528 = mem[mem[288] + 64]
                            mem[mem[64] + 452] = (32 * _19072) + 128
                            _22720 = mem[_22528]
                            mem[mem[64] + (32 * _19072) + 516] = mem[_22528]
                            idx = 0
                            s = _22528 + 32
                            t = mem[64] + (32 * _19072) + 548
                            while idx < _22720:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16480 + 260] = mem[320]
                            mem[_16480 + 292] = mem[352]
                            mem[_16480 + 324] = mem[384]
                            _26176 = mem[416]
                            mem[_16480 + 356] = (32 * _19072) + (32 * _22720) + 512
                            _26368 = mem[_26176]
                            mem[_16480 + (32 * _19072) + (32 * _22720) + 548] = mem[_26176]
                            mem[_16480 + (32 * _19072) + (32 * _22720) + 580 len ceil32(_26368)] = mem[_26176 + 32 len ceil32(_26368)]
                            var421001 = ceil32(_26368)
                            if ceil32(_26368) <= _26368:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16335 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16480 + (32 * _19072) + (32 * _22720) + ceil32(_26368) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28480 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28480] == mem[_28480]
                            else:
                                mem[_16480 + (32 * _19072) + (32 * _22720) + _26368 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16335 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16480 + (32 * _19072) + (32 * _22720) + ceil32(_26368) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28672 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28672] == mem[_28672]
                        else:
                            _16481 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            _18497 = mem[288]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18881 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19073 = mem[_18881]
                            mem[mem[64] + 484] = mem[_18881]
                            idx = 0
                            s = _18881 + 32
                            t = mem[64] + 516
                            while idx < _19073:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22529 = mem[_18497 + 64]
                            mem[_16481 + 452] = (32 * _19073) + 128
                            _22721 = mem[_22529]
                            mem[_16481 + (32 * _19073) + 516] = mem[_22529]
                            idx = 0
                            s = _22529 + 32
                            t = _16481 + (32 * _19073) + 548
                            while idx < _22721:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16481 + 260] = mem[320]
                            mem[_16481 + 292] = mem[352]
                            mem[_16481 + 324] = mem[384]
                            _26177 = mem[416]
                            mem[_16481 + 356] = (32 * _19073) + (32 * _22721) + 512
                            _26369 = mem[_26177]
                            mem[_16481 + (32 * _19073) + (32 * _22721) + 548] = mem[_26177]
                            mem[_16481 + (32 * _19073) + (32 * _22721) + 580 len ceil32(_26369)] = mem[_26177 + 32 len ceil32(_26369)]
                            var421001 = ceil32(_26369)
                            if ceil32(_26369) <= _26369:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16481 + (32 * _19073) + (32 * _22721) + ceil32(_26369) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28481 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28481] == mem[_28481]
                            else:
                                mem[_16481 + (32 * _19073) + (32 * _22721) + _26369 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16481 + (32 * _19073) + (32 * _22721) + ceil32(_26369) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28673 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28673] == mem[_28673]
                else:
                    if msg.value < 0:
                        revert with 'NH{q', 17
                    call msg.sender with:
                       value msg.value wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FEE_REFUND_FAILED'
                        mem[96] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 547] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 611] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 643] = 64
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 675] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707 len 0] = None
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 579] = 96
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707
                        mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 579
                        if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[3]) != mem[588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if ('cd', 4)[2] > 2:
                            revert with 'NH{q', 33
                        if not ('cd', 4)[2]:
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15910 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16103 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _17019 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16103)
                                mem[mem[64] + 68] = address(_17019)
                                require ext_code.size(address(_15910))
                                staticcall address(_15910).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16103), address(_17019)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17874 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17874] == mem[_17874]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17874]
                                continue 
                            if mem[128] + (_18162 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16487 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18503 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18887 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19079 = mem[_18887]
                                mem[mem[64] + 484] = mem[_18887]
                                idx = 0
                                s = _18887 + 32
                                t = mem[64] + 516
                                while idx < _19079:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22535 = mem[_18503 + 64]
                                mem[_16487 + 452] = (32 * _19079) + 128
                                _22727 = mem[_22535]
                                mem[_16487 + (32 * _19079) + 516] = mem[_22535]
                                idx = 0
                                s = _22535 + 32
                                t = _16487 + (32 * _19079) + 548
                                while idx < _22727:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16487 + 260] = mem[320]
                                mem[_16487 + 292] = mem[352]
                                mem[_16487 + 324] = mem[384]
                                _26183 = mem[416]
                                mem[_16487 + 356] = (32 * _19079) + (32 * _22727) + 512
                                _26375 = mem[_26183]
                                mem[_16487 + (32 * _19079) + (32 * _22727) + 548] = mem[_26183]
                                mem[_16487 + (32 * _19079) + (32 * _22727) + 580 len ceil32(_26375)] = mem[_26183 + 32 len ceil32(_26375)]
                                var389001 = ceil32(_26375)
                                if ceil32(_26375) <= _26375:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16487 + (32 * _19079) + (32 * _22727) + ceil32(_26375) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28487 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28487] == mem[_28487]
                                else:
                                    mem[_16487 + (32 * _19079) + (32 * _22727) + _26375 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16487 + (32 * _19079) + (32 * _22727) + ceil32(_26375) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28679 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28679] == mem[_28679]
                            else:
                                _16338 = mem[128]
                                _16486 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18502 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18886 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19078 = mem[_18886]
                                mem[mem[64] + 484] = mem[_18886]
                                idx = 0
                                s = _18886 + 32
                                t = mem[64] + 516
                                while idx < _19078:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22534 = mem[_18502 + 64]
                                mem[_16486 + 452] = (32 * _19078) + 128
                                _22726 = mem[_22534]
                                mem[_16486 + (32 * _19078) + 516] = mem[_22534]
                                idx = 0
                                s = _22534 + 32
                                t = _16486 + (32 * _19078) + 548
                                while idx < _22726:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16486 + 260] = mem[320]
                                mem[_16486 + 292] = mem[352]
                                mem[_16486 + 324] = mem[384]
                                _26182 = mem[416]
                                mem[_16486 + 356] = (32 * _19078) + (32 * _22726) + 512
                                _26374 = mem[_26182]
                                mem[_16486 + (32 * _19078) + (32 * _22726) + 548] = mem[_26182]
                                mem[_16486 + (32 * _19078) + (32 * _22726) + 580 len ceil32(_26374)] = mem[_26182 + 32 len ceil32(_26374)]
                                var389001 = ceil32(_26374)
                                if ceil32(_26374) <= _26374:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16338 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16486 + (32 * _19078) + (32 * _22726) + ceil32(_26374) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28486 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28486] == mem[_28486]
                                else:
                                    mem[_16486 + (32 * _19078) + (32 * _22726) + _26374 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16338 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16486 + (32 * _19078) + (32 * _22726) + ceil32(_26374) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28678 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28678] == mem[_28678]
                        else:
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 711] = msg.sender
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_BALANCE'
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 711] = msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 743] = coreAddress
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(msg.sender), coreAddress
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 707
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_ALLOWANCE'
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15912 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16105 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _17022 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16105)
                                mem[mem[64] + 68] = address(_17022)
                                require ext_code.size(address(_15912))
                                staticcall address(_15912).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16105), address(_17022)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17875 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17875] == mem[_17875]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17875]
                                continue 
                            if mem[128] + (_18163 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16489 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18505 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18889 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19081 = mem[_18889]
                                mem[mem[64] + 484] = mem[_18889]
                                idx = 0
                                s = _18889 + 32
                                t = mem[64] + 516
                                while idx < _19081:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22537 = mem[_18505 + 64]
                                mem[_16489 + 452] = (32 * _19081) + 128
                                _22729 = mem[_22537]
                                mem[_16489 + (32 * _19081) + 516] = mem[_22537]
                                idx = 0
                                s = _22537 + 32
                                t = _16489 + (32 * _19081) + 548
                                while idx < _22729:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16489 + 260] = mem[320]
                                mem[_16489 + 292] = mem[352]
                                mem[_16489 + 324] = mem[384]
                                _26185 = mem[416]
                                mem[_16489 + 356] = (32 * _19081) + (32 * _22729) + 512
                                _26377 = mem[_26185]
                                mem[_16489 + (32 * _19081) + (32 * _22729) + 548] = mem[_26185]
                                mem[_16489 + (32 * _19081) + (32 * _22729) + 580 len ceil32(_26377)] = mem[_26185 + 32 len ceil32(_26377)]
                                var438001 = ceil32(_26377)
                                if ceil32(_26377) <= _26377:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16489 + (32 * _19081) + (32 * _22729) + ceil32(_26377) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28489 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28489] == mem[_28489]
                                else:
                                    mem[_16489 + (32 * _19081) + (32 * _22729) + _26377 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16489 + (32 * _19081) + (32 * _22729) + ceil32(_26377) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28681 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28681] == mem[_28681]
                            else:
                                _16339 = mem[128]
                                _16488 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18504 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18888 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19080 = mem[_18888]
                                mem[mem[64] + 484] = mem[_18888]
                                idx = 0
                                s = _18888 + 32
                                t = mem[64] + 516
                                while idx < _19080:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22536 = mem[_18504 + 64]
                                mem[_16488 + 452] = (32 * _19080) + 128
                                _22728 = mem[_22536]
                                mem[_16488 + (32 * _19080) + 516] = mem[_22536]
                                idx = 0
                                s = _22536 + 32
                                t = _16488 + (32 * _19080) + 548
                                while idx < _22728:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16488 + 260] = mem[320]
                                mem[_16488 + 292] = mem[352]
                                mem[_16488 + 324] = mem[384]
                                _26184 = mem[416]
                                mem[_16488 + 356] = (32 * _19080) + (32 * _22728) + 512
                                _26376 = mem[_26184]
                                mem[_16488 + (32 * _19080) + (32 * _22728) + 548] = mem[_26184]
                                mem[_16488 + (32 * _19080) + (32 * _22728) + 580 len ceil32(_26376)] = mem[_26184 + 32 len ceil32(_26376)]
                                var438001 = ceil32(_26376)
                                if ceil32(_26376) <= _26376:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16339 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16488 + (32 * _19080) + (32 * _22728) + ceil32(_26376) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28488 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28488] == mem[_28488]
                                else:
                                    mem[_16488 + (32 * _19080) + (32 * _22728) + _26376 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16339 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16488 + (32 * _19080) + (32 * _22728) + ceil32(_26376) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28680 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28680] == mem[_28680]
                    else:
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 547] = return_data.size
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 579 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FEE_REFUND_FAILED'
                        mem[96] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 548] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 612] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 644] = 64
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 676] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 708 len 0] = None
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 580] = 96
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 708
                        mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 580
                        if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[3]) != mem[588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if ('cd', 4)[2] > 2:
                            revert with 'NH{q', 33
                        if not ('cd', 4)[2]:
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15918 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16111 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _17031 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16111)
                                mem[mem[64] + 68] = address(_17031)
                                require ext_code.size(address(_15918))
                                staticcall address(_15918).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16111), address(_17031)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17878 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17878] == mem[_17878]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17878]
                                continue 
                            if mem[128] + (_18166 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16495 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18511 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18895 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19087 = mem[_18895]
                                mem[mem[64] + 484] = mem[_18895]
                                idx = 0
                                s = _18895 + 32
                                t = mem[64] + 516
                                while idx < _19087:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22543 = mem[_18511 + 64]
                                mem[_16495 + 452] = (32 * _19087) + 128
                                _22735 = mem[_22543]
                                mem[_16495 + (32 * _19087) + 516] = mem[_22543]
                                idx = 0
                                s = _22543 + 32
                                t = _16495 + (32 * _19087) + 548
                                while idx < _22735:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16495 + 260] = mem[320]
                                mem[_16495 + 292] = mem[352]
                                mem[_16495 + 324] = mem[384]
                                _26191 = mem[416]
                                mem[_16495 + 356] = (32 * _19087) + (32 * _22735) + 512
                                _26383 = mem[_26191]
                                mem[_16495 + (32 * _19087) + (32 * _22735) + 548] = mem[_26191]
                                mem[_16495 + (32 * _19087) + (32 * _22735) + 580 len ceil32(_26383)] = mem[_26191 + 32 len ceil32(_26383)]
                                var389001 = ceil32(_26383)
                                if ceil32(_26383) <= _26383:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16495 + (32 * _19087) + (32 * _22735) + ceil32(_26383) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28495 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28495] == mem[_28495]
                                else:
                                    mem[_16495 + (32 * _19087) + (32 * _22735) + _26383 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16495 + (32 * _19087) + (32 * _22735) + ceil32(_26383) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28687 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28687] == mem[_28687]
                            else:
                                _16342 = mem[128]
                                _16494 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18510 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18894 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19086 = mem[_18894]
                                mem[mem[64] + 484] = mem[_18894]
                                idx = 0
                                s = _18894 + 32
                                t = mem[64] + 516
                                while idx < _19086:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22542 = mem[_18510 + 64]
                                mem[_16494 + 452] = (32 * _19086) + 128
                                _22734 = mem[_22542]
                                mem[_16494 + (32 * _19086) + 516] = mem[_22542]
                                idx = 0
                                s = _22542 + 32
                                t = _16494 + (32 * _19086) + 548
                                while idx < _22734:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16494 + 260] = mem[320]
                                mem[_16494 + 292] = mem[352]
                                mem[_16494 + 324] = mem[384]
                                _26190 = mem[416]
                                mem[_16494 + 356] = (32 * _19086) + (32 * _22734) + 512
                                _26382 = mem[_26190]
                                mem[_16494 + (32 * _19086) + (32 * _22734) + 548] = mem[_26190]
                                mem[_16494 + (32 * _19086) + (32 * _22734) + 580 len ceil32(_26382)] = mem[_26190 + 32 len ceil32(_26382)]
                                var389001 = ceil32(_26382)
                                if ceil32(_26382) <= _26382:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16342 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16494 + (32 * _19086) + (32 * _22734) + ceil32(_26382) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28494 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28494] == mem[_28494]
                                else:
                                    mem[_16494 + (32 * _19086) + (32 * _22734) + _26382 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16342 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16494 + (32 * _19086) + (32 * _22734) + ceil32(_26382) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28686 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28686] == mem[_28686]
                        else:
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 712] = msg.sender
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 708] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_BALANCE'
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 712] = msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 744] = coreAddress
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(msg.sender), coreAddress
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 708] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 708
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_ALLOWANCE'
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15920 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16113 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _17034 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16113)
                                mem[mem[64] + 68] = address(_17034)
                                require ext_code.size(address(_15920))
                                staticcall address(_15920).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16113), address(_17034)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17879 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17879] == mem[_17879]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17879]
                                continue 
                            if mem[128] + (_18167 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16497 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18897 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19089 = mem[_18897]
                                mem[mem[64] + 484] = mem[_18897]
                                idx = 0
                                s = _18897 + 32
                                t = mem[64] + 516
                                while idx < _19089:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22545 = mem[mem[288] + 64]
                                mem[mem[64] + 452] = (32 * _19089) + 128
                                _22737 = mem[_22545]
                                mem[mem[64] + (32 * _19089) + 516] = mem[_22545]
                                idx = 0
                                s = _22545 + 32
                                t = mem[64] + (32 * _19089) + 548
                                while idx < _22737:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16497 + 260] = mem[320]
                                mem[_16497 + 292] = mem[352]
                                mem[_16497 + 324] = mem[384]
                                _26193 = mem[416]
                                mem[_16497 + 356] = (32 * _19089) + (32 * _22737) + 512
                                _26385 = mem[_26193]
                                mem[_16497 + (32 * _19089) + (32 * _22737) + 548] = mem[_26193]
                                mem[_16497 + (32 * _19089) + (32 * _22737) + 580 len ceil32(_26385)] = mem[_26193 + 32 len ceil32(_26385)]
                                var438001 = ceil32(_26385)
                                if ceil32(_26385) <= _26385:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16497 + (32 * _19089) + (32 * _22737) + ceil32(_26385) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28497 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28497] == mem[_28497]
                                else:
                                    mem[_16497 + (32 * _19089) + (32 * _22737) + _26385 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16497 + (32 * _19089) + (32 * _22737) + ceil32(_26385) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28689 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28689] == mem[_28689]
                            else:
                                _16343 = mem[128]
                                _16496 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18896 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19088 = mem[_18896]
                                mem[mem[64] + 484] = mem[_18896]
                                idx = 0
                                s = _18896 + 32
                                t = mem[64] + 516
                                while idx < _19088:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22544 = mem[mem[288] + 64]
                                mem[mem[64] + 452] = (32 * _19088) + 128
                                _22736 = mem[_22544]
                                mem[mem[64] + (32 * _19088) + 516] = mem[_22544]
                                idx = 0
                                s = _22544 + 32
                                t = mem[64] + (32 * _19088) + 548
                                while idx < _22736:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16496 + 260] = mem[320]
                                mem[_16496 + 292] = mem[352]
                                mem[_16496 + 324] = mem[384]
                                _26192 = mem[416]
                                mem[_16496 + 356] = (32 * _19088) + (32 * _22736) + 512
                                _26384 = mem[_26192]
                                mem[_16496 + (32 * _19088) + (32 * _22736) + 548] = mem[_26192]
                                mem[_16496 + (32 * _19088) + (32 * _22736) + 580 len ceil32(_26384)] = mem[_26192 + 32 len ceil32(_26384)]
                                var438001 = ceil32(_26384)
                                if ceil32(_26384) <= _26384:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16343 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16496 + (32 * _19088) + (32 * _22736) + ceil32(_26384) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28496 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28496] == mem[_28496]
                                else:
                                    mem[_16496 + (32 * _19088) + (32 * _22736) + _26384 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16343 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16496 + (32 * _19088) + (32 * _22736) + ceil32(_26384) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28688 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28688] == mem[_28688]
            else:
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 551] = this.address
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 583] = uint8(cd[36])
                require ext_code.size(feeManagerAddress)
                staticcall feeManagerAddress.0x2506d6f0 with:
                        gas gas_remaining wei
                       args address(this.address), uint8(cd[36])
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 547] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > msg.value:
                    revert with 0, 'TX_UNDERPRICED'
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 551] = msg.sender
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 583] = uint8(cd[36])
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 615] = cd[68]
                require ext_code.size(feeManagerAddress)
                call feeManagerAddress.0x156d0c19 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args msg.sender, cd[36] << 248, cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if msg.value < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if msg.value - ext_call.return_data[0] <= 0:
                    if msg.value - ext_call.return_data[0] < 0:
                        revert with 0, 'TX_UNDERPRICED'
                    mem[96] = msg.sender
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 547] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 611] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 643] = 64
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 675] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707 len 0] = None
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 579] = 96
                    mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707
                    mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 579
                    if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                        revert with 'NH{q', 50
                    if address(('cd', 4)[3]) != mem[588 len 20]:
                        revert with 0, 'ERR_PATH'
                    if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                        revert with 'NH{q', 17
                    if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                        revert with 'NH{q', 50
                    if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                        revert with 0, 'ERR_PATH'
                    if ('cd', 4)[2] > 2:
                        revert with 'NH{q', 33
                    if not ('cd', 4)[2]:
                        if ('cd', 4)[8] <= block.timestamp:
                            revert with 0, 'ERR_EXPIRY'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                            revert with 0, 'INVALID_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                            revert with 0, 'INVALID_PATH'
                        idx = 0
                        s = mem[128]
                        while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                            if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                revert with 'NH{q', 50
                            _15926 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                            if idx >= mem[544]:
                                revert with 'NH{q', 50
                            _16119 = mem[(32 * idx) + 576]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[544]:
                                revert with 'NH{q', 50
                            _17043 = mem[(32 * idx + 1) + 576]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = address(_16119)
                            mem[mem[64] + 68] = address(_17043)
                            require ext_code.size(address(_15926))
                            staticcall address(_15926).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args s, address(_16119), address(_17043)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17882 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_17882] == mem[_17882]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_17882]
                            continue 
                        if mem[128] + (_18170 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                            revert with 0, 'ERR_CURRENT_AMT'
                        if mem[192] > 2:
                            revert with 'NH{q', 33
                        if mem[192]:
                            _16503 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18903 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19095 = mem[_18903]
                            mem[mem[64] + 484] = mem[_18903]
                            idx = 0
                            s = _18903 + 32
                            t = mem[64] + 516
                            while idx < _19095:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22551 = mem[mem[288] + 64]
                            mem[mem[64] + 452] = (32 * _19095) + 128
                            _22743 = mem[_22551]
                            mem[mem[64] + (32 * _19095) + 516] = mem[_22551]
                            idx = 0
                            s = _22551 + 32
                            t = mem[64] + (32 * _19095) + 548
                            while idx < _22743:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16503 + 260] = mem[320]
                            mem[_16503 + 292] = mem[352]
                            mem[_16503 + 324] = mem[384]
                            _26199 = mem[416]
                            mem[_16503 + 356] = (32 * _19095) + (32 * _22743) + 512
                            _26391 = mem[_26199]
                            mem[_16503 + (32 * _19095) + (32 * _22743) + 548] = mem[_26199]
                            mem[_16503 + (32 * _19095) + (32 * _22743) + 580 len ceil32(_26391)] = mem[_26199 + 32 len ceil32(_26391)]
                            if ceil32(_26391) <= _26391:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16503 + (32 * _19095) + (32 * _22743) + ceil32(_26391) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28503 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28503] == mem[_28503]
                            else:
                                mem[_16503 + (32 * _19095) + (32 * _22743) + _26391 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16503 + (32 * _19095) + (32 * _22743) + ceil32(_26391) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28695 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28695] == mem[_28695]
                        else:
                            _16346 = mem[128]
                            _16502 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            _18518 = mem[288]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18902 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19094 = mem[_18902]
                            mem[mem[64] + 484] = mem[_18902]
                            idx = 0
                            s = _18902 + 32
                            t = mem[64] + 516
                            while idx < _19094:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22550 = mem[_18518 + 64]
                            mem[_16502 + 452] = (32 * _19094) + 128
                            _22742 = mem[_22550]
                            mem[_16502 + (32 * _19094) + 516] = mem[_22550]
                            idx = 0
                            s = _22550 + 32
                            t = _16502 + (32 * _19094) + 548
                            while idx < _22742:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16502 + 260] = mem[320]
                            mem[_16502 + 292] = mem[352]
                            mem[_16502 + 324] = mem[384]
                            _26198 = mem[416]
                            mem[_16502 + 356] = (32 * _19094) + (32 * _22742) + 512
                            _26390 = mem[_26198]
                            mem[_16502 + (32 * _19094) + (32 * _22742) + 548] = mem[_26198]
                            mem[_16502 + (32 * _19094) + (32 * _22742) + 580 len ceil32(_26390)] = mem[_26198 + 32 len ceil32(_26390)]
                            if ceil32(_26390) <= _26390:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16346 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16502 + (32 * _19094) + (32 * _22742) + ceil32(_26390) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28502 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28502] == mem[_28502]
                            else:
                                mem[_16502 + (32 * _19094) + (32 * _22742) + _26390 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16346 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16502 + (32 * _19094) + (32 * _22742) + ceil32(_26390) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28694 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28694] == mem[_28694]
                    else:
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 711] = msg.sender
                        require ext_code.size(address(('cd', 4)[3]))
                        staticcall address(('cd', 4)[3]).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ('cd', 4)[0]:
                            revert with 0, 'ERR_BALANCE'
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 711] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 743] = coreAddress
                        require ext_code.size(address(('cd', 4)[3]))
                        staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(msg.sender), coreAddress
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 707] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (4 * ceil32(return_data.size)) + 707
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ('cd', 4)[0]:
                            revert with 0, 'ERR_ALLOWANCE'
                        if ('cd', 4)[8] <= block.timestamp:
                            revert with 0, 'ERR_EXPIRY'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                            revert with 0, 'INVALID_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                            revert with 0, 'INVALID_PATH'
                        idx = 0
                        s = mem[128]
                        while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                            if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                revert with 'NH{q', 50
                            _15928 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                            if idx >= mem[544]:
                                revert with 'NH{q', 50
                            _16121 = mem[(32 * idx) + 576]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[544]:
                                revert with 'NH{q', 50
                            _17046 = mem[(32 * idx + 1) + 576]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = address(_16121)
                            mem[mem[64] + 68] = address(_17046)
                            require ext_code.size(address(_15928))
                            staticcall address(_15928).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args s, address(_16121), address(_17046)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17883 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_17883] == mem[_17883]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_17883]
                            continue 
                        if mem[128] + (_18171 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                            revert with 0, 'ERR_CURRENT_AMT'
                        if mem[192] > 2:
                            revert with 'NH{q', 33
                        if mem[192]:
                            _16505 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            _18521 = mem[288]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18905 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19097 = mem[_18905]
                            mem[mem[64] + 484] = mem[_18905]
                            idx = 0
                            s = _18905 + 32
                            t = mem[64] + 516
                            while idx < _19097:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22553 = mem[_18521 + 64]
                            mem[_16505 + 452] = (32 * _19097) + 128
                            _22745 = mem[_22553]
                            mem[_16505 + (32 * _19097) + 516] = mem[_22553]
                            idx = 0
                            s = _22553 + 32
                            t = _16505 + (32 * _19097) + 548
                            while idx < _22745:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16505 + 260] = mem[320]
                            mem[_16505 + 292] = mem[352]
                            mem[_16505 + 324] = mem[384]
                            _26201 = mem[416]
                            mem[_16505 + 356] = (32 * _19097) + (32 * _22745) + 512
                            _26393 = mem[_26201]
                            mem[_16505 + (32 * _19097) + (32 * _22745) + 548] = mem[_26201]
                            mem[_16505 + (32 * _19097) + (32 * _22745) + 580 len ceil32(_26393)] = mem[_26201 + 32 len ceil32(_26393)]
                            if ceil32(_26393) <= _26393:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16505 + (32 * _19097) + (32 * _22745) + ceil32(_26393) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28505 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28505] == mem[_28505]
                            else:
                                mem[_16505 + (32 * _19097) + (32 * _22745) + _26393 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16505 + (32 * _19097) + (32 * _22745) + ceil32(_26393) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28697 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28697] == mem[_28697]
                        else:
                            _16347 = mem[128]
                            _16504 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            _18520 = mem[288]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18904 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19096 = mem[_18904]
                            mem[mem[64] + 484] = mem[_18904]
                            idx = 0
                            s = _18904 + 32
                            t = mem[64] + 516
                            while idx < _19096:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22552 = mem[_18520 + 64]
                            mem[_16504 + 452] = (32 * _19096) + 128
                            _22744 = mem[_22552]
                            mem[_16504 + (32 * _19096) + 516] = mem[_22552]
                            idx = 0
                            s = _22552 + 32
                            t = _16504 + (32 * _19096) + 548
                            while idx < _22744:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16504 + 260] = mem[320]
                            mem[_16504 + 292] = mem[352]
                            mem[_16504 + 324] = mem[384]
                            _26200 = mem[416]
                            mem[_16504 + 356] = (32 * _19096) + (32 * _22744) + 512
                            _26392 = mem[_26200]
                            mem[_16504 + (32 * _19096) + (32 * _22744) + 548] = mem[_26200]
                            mem[_16504 + (32 * _19096) + (32 * _22744) + 580 len ceil32(_26392)] = mem[_26200 + 32 len ceil32(_26392)]
                            if ceil32(_26392) <= _26392:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16347 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16504 + (32 * _19096) + (32 * _22744) + ceil32(_26392) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28504 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28504] == mem[_28504]
                            else:
                                mem[_16504 + (32 * _19096) + (32 * _22744) + _26392 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16347 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16504 + (32 * _19096) + (32 * _22744) + ceil32(_26392) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28696 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28696] == mem[_28696]
                else:
                    if msg.value - ext_call.return_data[0] < 0:
                        revert with 'NH{q', 17
                    call msg.sender with:
                       value msg.value - ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FEE_REFUND_FAILED'
                        mem[96] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 547] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 611] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 643] = 64
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 675] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707 len 0] = None
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 579] = 96
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707
                        mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 579
                        if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[3]) != mem[588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if ('cd', 4)[2] > 2:
                            revert with 'NH{q', 33
                        if not ('cd', 4)[2]:
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15934 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16127 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _17055 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16127)
                                mem[mem[64] + 68] = address(_17055)
                                require ext_code.size(address(_15934))
                                staticcall address(_15934).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16127), address(_17055)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17886 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17886] == mem[_17886]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17886]
                                continue 
                            if mem[128] + (_18174 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16511 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18527 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18911 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19103 = mem[_18911]
                                mem[mem[64] + 484] = mem[_18911]
                                idx = 0
                                s = _18911 + 32
                                t = mem[64] + 516
                                while idx < _19103:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22559 = mem[_18527 + 64]
                                mem[_16511 + 452] = (32 * _19103) + 128
                                _22751 = mem[_22559]
                                mem[_16511 + (32 * _19103) + 516] = mem[_22559]
                                idx = 0
                                s = _22559 + 32
                                t = _16511 + (32 * _19103) + 548
                                while idx < _22751:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16511 + 260] = mem[320]
                                mem[_16511 + 292] = mem[352]
                                mem[_16511 + 324] = mem[384]
                                _26207 = mem[416]
                                mem[_16511 + 356] = (32 * _19103) + (32 * _22751) + 512
                                _26399 = mem[_26207]
                                mem[_16511 + (32 * _19103) + (32 * _22751) + 548] = mem[_26207]
                                mem[_16511 + (32 * _19103) + (32 * _22751) + 580 len ceil32(_26399)] = mem[_26207 + 32 len ceil32(_26399)]
                                var421001 = ceil32(_26399)
                                if ceil32(_26399) <= _26399:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16511 + (32 * _19103) + (32 * _22751) + ceil32(_26399) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28511 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28511] == mem[_28511]
                                else:
                                    mem[_16511 + (32 * _19103) + (32 * _22751) + _26399 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16511 + (32 * _19103) + (32 * _22751) + ceil32(_26399) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28703 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28703] == mem[_28703]
                            else:
                                _16350 = mem[128]
                                _16510 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18526 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18910 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19102 = mem[_18910]
                                mem[mem[64] + 484] = mem[_18910]
                                idx = 0
                                s = _18910 + 32
                                t = mem[64] + 516
                                while idx < _19102:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22558 = mem[_18526 + 64]
                                mem[_16510 + 452] = (32 * _19102) + 128
                                _22750 = mem[_22558]
                                mem[_16510 + (32 * _19102) + 516] = mem[_22558]
                                idx = 0
                                s = _22558 + 32
                                t = _16510 + (32 * _19102) + 548
                                while idx < _22750:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16510 + 260] = mem[320]
                                mem[_16510 + 292] = mem[352]
                                mem[_16510 + 324] = mem[384]
                                _26206 = mem[416]
                                mem[_16510 + 356] = (32 * _19102) + (32 * _22750) + 512
                                _26398 = mem[_26206]
                                mem[_16510 + (32 * _19102) + (32 * _22750) + 548] = mem[_26206]
                                mem[_16510 + (32 * _19102) + (32 * _22750) + 580 len ceil32(_26398)] = mem[_26206 + 32 len ceil32(_26398)]
                                var421001 = ceil32(_26398)
                                if ceil32(_26398) <= _26398:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16350 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16510 + (32 * _19102) + (32 * _22750) + ceil32(_26398) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28510 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28510] == mem[_28510]
                                else:
                                    mem[_16510 + (32 * _19102) + (32 * _22750) + _26398 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16350 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16510 + (32 * _19102) + (32 * _22750) + ceil32(_26398) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28702 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28702] == mem[_28702]
                        else:
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 711] = msg.sender
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_BALANCE'
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 711] = msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 743] = coreAddress
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(msg.sender), coreAddress
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 707] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (4 * ceil32(return_data.size)) + 707
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_ALLOWANCE'
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15936 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16129 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _17058 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16129)
                                mem[mem[64] + 68] = address(_17058)
                                require ext_code.size(address(_15936))
                                staticcall address(_15936).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16129), address(_17058)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17887 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17887] == mem[_17887]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17887]
                                continue 
                            if mem[128] + (_18175 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if not mem[192]:
                                _16351 = mem[128]
                                _16512 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18912 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19104 = mem[_18912]
                                mem[mem[64] + 484] = mem[_18912]
                                idx = 0
                                s = _18912 + 32
                                t = mem[64] + 516
                                while idx < _19104:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22560 = mem[mem[288] + 64]
                                mem[mem[64] + 452] = (32 * _19104) + 128
                                _22752 = mem[_22560]
                                mem[mem[64] + (32 * _19104) + 516] = mem[_22560]
                                idx = 0
                                s = _22560 + 32
                                t = mem[64] + (32 * _19104) + 548
                                while idx < _22752:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16512 + 260] = mem[320]
                                mem[_16512 + 292] = mem[352]
                                mem[_16512 + 324] = mem[384]
                                _26208 = mem[416]
                                mem[_16512 + 356] = (32 * _19104) + (32 * _22752) + 512
                                _26400 = mem[_26208]
                                mem[_16512 + (32 * _19104) + (32 * _22752) + 548] = mem[_26208]
                                mem[_16512 + (32 * _19104) + (32 * _22752) + 580 len ceil32(_26400)] = mem[_26208 + 32 len ceil32(_26400)]
                                if ceil32(_26400) <= _26400:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16351 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16512 + (32 * _19104) + (32 * _22752) + ceil32(_26400) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28512 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28512] == mem[_28512]
                                else:
                                    mem[_16512 + (32 * _19104) + (32 * _22752) + _26400 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16351 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16512 + (32 * _19104) + (32 * _22752) + ceil32(_26400) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28704 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28704] == mem[_28704]
                            else:
                                _16513 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18529 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18913 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19105 = mem[_18913]
                                mem[mem[64] + 484] = mem[_18913]
                                idx = 0
                                s = _18913 + 32
                                t = mem[64] + 516
                                while idx < _19105:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22561 = mem[_18529 + 64]
                                mem[_16513 + 452] = (32 * _19105) + 128
                                _22753 = mem[_22561]
                                mem[_16513 + (32 * _19105) + 516] = mem[_22561]
                                idx = 0
                                s = _22561 + 32
                                t = _16513 + (32 * _19105) + 548
                                while idx < _22753:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16513 + 260] = mem[320]
                                mem[_16513 + 292] = mem[352]
                                mem[_16513 + 324] = mem[384]
                                _26209 = mem[416]
                                mem[_16513 + 356] = (32 * _19105) + (32 * _22753) + 512
                                _26401 = mem[_26209]
                                mem[_16513 + (32 * _19105) + (32 * _22753) + 548] = mem[_26209]
                                mem[_16513 + (32 * _19105) + (32 * _22753) + 580 len ceil32(_26401)] = mem[_26209 + 32 len ceil32(_26401)]
                                if ceil32(_26401) <= _26401:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16513 + (32 * _19105) + (32 * _22753) + ceil32(_26401) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28513 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28513] == mem[_28513]
                                else:
                                    mem[_16513 + (32 * _19105) + (32 * _22753) + _26401 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16513 + (32 * _19105) + (32 * _22753) + ceil32(_26401) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28705 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28705] == mem[_28705]
                    else:
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 547] = return_data.size
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 579 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FEE_REFUND_FAILED'
                        mem[96] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 548] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 612] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 644] = 64
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 676] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 708 len 0] = None
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 580] = 96
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 708
                        mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 580
                        if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[3]) != mem[588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if ('cd', 4)[2] > 2:
                            revert with 'NH{q', 33
                        if not ('cd', 4)[2]:
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15942 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16135 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _17067 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16135)
                                mem[mem[64] + 68] = address(_17067)
                                require ext_code.size(address(_15942))
                                staticcall address(_15942).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16135), address(_17067)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17890 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17890] == mem[_17890]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17890]
                                continue 
                            if mem[128] + (_18178 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16519 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18535 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18919 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19111 = mem[_18919]
                                mem[mem[64] + 484] = mem[_18919]
                                idx = 0
                                s = _18919 + 32
                                t = mem[64] + 516
                                while idx < _19111:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22567 = mem[_18535 + 64]
                                mem[_16519 + 452] = (32 * _19111) + 128
                                _22759 = mem[_22567]
                                mem[_16519 + (32 * _19111) + 516] = mem[_22567]
                                idx = 0
                                s = _22567 + 32
                                t = _16519 + (32 * _19111) + 548
                                while idx < _22759:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16519 + 260] = mem[320]
                                mem[_16519 + 292] = mem[352]
                                mem[_16519 + 324] = mem[384]
                                _26215 = mem[416]
                                mem[_16519 + 356] = (32 * _19111) + (32 * _22759) + 512
                                _26407 = mem[_26215]
                                mem[_16519 + (32 * _19111) + (32 * _22759) + 548] = mem[_26215]
                                mem[_16519 + (32 * _19111) + (32 * _22759) + 580 len ceil32(_26407)] = mem[_26215 + 32 len ceil32(_26407)]
                                var421001 = ceil32(_26407)
                                if ceil32(_26407) <= _26407:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16519 + (32 * _19111) + (32 * _22759) + ceil32(_26407) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28519 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28519] == mem[_28519]
                                else:
                                    mem[_16519 + (32 * _19111) + (32 * _22759) + _26407 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16519 + (32 * _19111) + (32 * _22759) + ceil32(_26407) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28711 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28711] == mem[_28711]
                            else:
                                _16354 = mem[128]
                                _16518 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18534 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18918 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19110 = mem[_18918]
                                mem[mem[64] + 484] = mem[_18918]
                                idx = 0
                                s = _18918 + 32
                                t = mem[64] + 516
                                while idx < _19110:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22566 = mem[_18534 + 64]
                                mem[_16518 + 452] = (32 * _19110) + 128
                                _22758 = mem[_22566]
                                mem[_16518 + (32 * _19110) + 516] = mem[_22566]
                                idx = 0
                                s = _22566 + 32
                                t = _16518 + (32 * _19110) + 548
                                while idx < _22758:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16518 + 260] = mem[320]
                                mem[_16518 + 292] = mem[352]
                                mem[_16518 + 324] = mem[384]
                                _26214 = mem[416]
                                mem[_16518 + 356] = (32 * _19110) + (32 * _22758) + 512
                                _26406 = mem[_26214]
                                mem[_16518 + (32 * _19110) + (32 * _22758) + 548] = mem[_26214]
                                mem[_16518 + (32 * _19110) + (32 * _22758) + 580 len ceil32(_26406)] = mem[_26214 + 32 len ceil32(_26406)]
                                var421001 = ceil32(_26406)
                                if ceil32(_26406) <= _26406:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16354 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16518 + (32 * _19110) + (32 * _22758) + ceil32(_26406) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28518 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28518] == mem[_28518]
                                else:
                                    mem[_16518 + (32 * _19110) + (32 * _22758) + _26406 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16354 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16518 + (32 * _19110) + (32 * _22758) + ceil32(_26406) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28710 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28710] == mem[_28710]
                        else:
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 712] = msg.sender
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 708] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_BALANCE'
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 712] = msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 744] = coreAddress
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(msg.sender), coreAddress
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 708] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 708
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_ALLOWANCE'
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15944 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16137 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _17070 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16137)
                                mem[mem[64] + 68] = address(_17070)
                                require ext_code.size(address(_15944))
                                staticcall address(_15944).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16137), address(_17070)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17891 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17891] == mem[_17891]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17891]
                                continue 
                            if mem[128] + (_18179 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if not mem[192]:
                                _16355 = mem[128]
                                _16520 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18920 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19112 = mem[_18920]
                                mem[mem[64] + 484] = mem[_18920]
                                idx = 0
                                s = _18920 + 32
                                t = mem[64] + 516
                                while idx < _19112:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22568 = mem[mem[288] + 64]
                                mem[mem[64] + 452] = (32 * _19112) + 128
                                _22760 = mem[_22568]
                                mem[mem[64] + (32 * _19112) + 516] = mem[_22568]
                                idx = 0
                                s = _22568 + 32
                                t = mem[64] + (32 * _19112) + 548
                                while idx < _22760:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16520 + 260] = mem[320]
                                mem[_16520 + 292] = mem[352]
                                mem[_16520 + 324] = mem[384]
                                _26216 = mem[416]
                                mem[_16520 + 356] = (32 * _19112) + (32 * _22760) + 512
                                _26408 = mem[_26216]
                                mem[_16520 + (32 * _19112) + (32 * _22760) + 548] = mem[_26216]
                                mem[_16520 + (32 * _19112) + (32 * _22760) + 580 len ceil32(_26408)] = mem[_26216 + 32 len ceil32(_26408)]
                                if ceil32(_26408) <= _26408:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16355 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16520 + (32 * _19112) + (32 * _22760) + ceil32(_26408) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28520 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28520] == mem[_28520]
                                else:
                                    mem[_16520 + (32 * _19112) + (32 * _22760) + _26408 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16355 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16520 + (32 * _19112) + (32 * _22760) + ceil32(_26408) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28712 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28712] == mem[_28712]
                            else:
                                _16521 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18537 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18921 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19113 = mem[_18921]
                                mem[mem[64] + 484] = mem[_18921]
                                idx = 0
                                s = _18921 + 32
                                t = mem[64] + 516
                                while idx < _19113:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22569 = mem[_18537 + 64]
                                mem[_16521 + 452] = (32 * _19113) + 128
                                _22761 = mem[_22569]
                                mem[_16521 + (32 * _19113) + 516] = mem[_22569]
                                idx = 0
                                s = _22569 + 32
                                t = _16521 + (32 * _19113) + 548
                                while idx < _22761:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16521 + 260] = mem[320]
                                mem[_16521 + 292] = mem[352]
                                mem[_16521 + 324] = mem[384]
                                _26217 = mem[416]
                                mem[_16521 + 356] = (32 * _19113) + (32 * _22761) + 512
                                _26409 = mem[_26217]
                                mem[_16521 + (32 * _19113) + (32 * _22761) + 548] = mem[_26217]
                                mem[_16521 + (32 * _19113) + (32 * _22761) + 580 len ceil32(_26409)] = mem[_26217 + 32 len ceil32(_26409)]
                                if ceil32(_26409) <= _26409:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16521 + (32 * _19113) + (32 * _22761) + ceil32(_26409) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28521 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28521] == mem[_28521]
                                else:
                                    mem[_16521 + (32 * _19113) + (32 * _22761) + _26409 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16521 + (32 * _19113) + (32 * _22761) + ceil32(_26409) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28713 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28713] == mem[_28713]
        else:
            if uint8(cd[36]):
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 551] = msg.sender
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 583] = uint8(cd[36])
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 615] = cd[68]
                require ext_code.size(feeManagerAddress)
                call feeManagerAddress.0x156d0c19 with:
                     gas gas_remaining wei
                    args msg.sender, cd[36] << 248, cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if msg.value <= ('cd', 4)[0]:
                    if msg.value < ('cd', 4)[0]:
                        revert with 0, 'TX_UNDERPRICED'
                    mem[96] = msg.sender
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 547] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 611] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 643] = 64
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 675] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707 len 0] = None
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 579] = 96
                    mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707
                    mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 579
                    if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                        revert with 'NH{q', 50
                    if address(('cd', 4)[3]) != mem[588 len 20]:
                        revert with 0, 'ERR_PATH'
                    if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                        revert with 'NH{q', 17
                    if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                        revert with 'NH{q', 50
                    if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                        revert with 0, 'ERR_PATH'
                    if ('cd', 4)[2] > 2:
                        revert with 'NH{q', 33
                    if not ('cd', 4)[2]:
                        if ('cd', 4)[8] <= block.timestamp:
                            revert with 0, 'ERR_EXPIRY'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                            revert with 0, 'INVALID_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                            revert with 0, 'INVALID_PATH'
                        idx = 0
                        s = mem[128]
                        while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                            if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                revert with 'NH{q', 50
                            _15950 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                            if idx >= mem[544]:
                                revert with 'NH{q', 50
                            _16143 = mem[(32 * idx) + 576]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[544]:
                                revert with 'NH{q', 50
                            _17079 = mem[(32 * idx + 1) + 576]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = address(_16143)
                            mem[mem[64] + 68] = address(_17079)
                            require ext_code.size(address(_15950))
                            staticcall address(_15950).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args s, address(_16143), address(_17079)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17894 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_17894] == mem[_17894]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_17894]
                            continue 
                        if mem[128] + (_18182 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                            revert with 0, 'ERR_CURRENT_AMT'
                        if mem[192] > 2:
                            revert with 'NH{q', 33
                        if mem[192]:
                            _16527 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            _18543 = mem[288]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18927 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19119 = mem[_18927]
                            mem[mem[64] + 484] = mem[_18927]
                            idx = 0
                            s = _18927 + 32
                            t = mem[64] + 516
                            while idx < _19119:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22575 = mem[_18543 + 64]
                            mem[_16527 + 452] = (32 * _19119) + 128
                            _22767 = mem[_22575]
                            mem[_16527 + (32 * _19119) + 516] = mem[_22575]
                            idx = 0
                            s = _22575 + 32
                            t = _16527 + (32 * _19119) + 548
                            while idx < _22767:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16527 + 260] = mem[320]
                            mem[_16527 + 292] = mem[352]
                            mem[_16527 + 324] = mem[384]
                            _26223 = mem[416]
                            mem[_16527 + 356] = (32 * _19119) + (32 * _22767) + 512
                            _26415 = mem[_26223]
                            mem[_16527 + (32 * _19119) + (32 * _22767) + 548] = mem[_26223]
                            mem[_16527 + (32 * _19119) + (32 * _22767) + 580 len ceil32(_26415)] = mem[_26223 + 32 len ceil32(_26415)]
                            var372001 = ceil32(_26415)
                            if ceil32(_26415) <= _26415:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16527 + (32 * _19119) + (32 * _22767) + ceil32(_26415) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28527 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28527] == mem[_28527]
                            else:
                                mem[_16527 + (32 * _19119) + (32 * _22767) + _26415 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16527 + (32 * _19119) + (32 * _22767) + ceil32(_26415) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28719 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28719] == mem[_28719]
                        else:
                            _16358 = mem[128]
                            _16526 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            _18542 = mem[288]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18926 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19118 = mem[_18926]
                            mem[mem[64] + 484] = mem[_18926]
                            idx = 0
                            s = _18926 + 32
                            t = mem[64] + 516
                            while idx < _19118:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22574 = mem[_18542 + 64]
                            mem[_16526 + 452] = (32 * _19118) + 128
                            _22766 = mem[_22574]
                            mem[_16526 + (32 * _19118) + 516] = mem[_22574]
                            idx = 0
                            s = _22574 + 32
                            t = _16526 + (32 * _19118) + 548
                            while idx < _22766:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16526 + 260] = mem[320]
                            mem[_16526 + 292] = mem[352]
                            mem[_16526 + 324] = mem[384]
                            _26222 = mem[416]
                            mem[_16526 + 356] = (32 * _19118) + (32 * _22766) + 512
                            _26414 = mem[_26222]
                            mem[_16526 + (32 * _19118) + (32 * _22766) + 548] = mem[_26222]
                            mem[_16526 + (32 * _19118) + (32 * _22766) + 580 len ceil32(_26414)] = mem[_26222 + 32 len ceil32(_26414)]
                            var372001 = ceil32(_26414)
                            if ceil32(_26414) <= _26414:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16358 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16526 + (32 * _19118) + (32 * _22766) + ceil32(_26414) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28526 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28526] == mem[_28526]
                            else:
                                mem[_16526 + (32 * _19118) + (32 * _22766) + _26414 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16358 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16526 + (32 * _19118) + (32 * _22766) + ceil32(_26414) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28718 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28718] == mem[_28718]
                    else:
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 711] = msg.sender
                        require ext_code.size(address(('cd', 4)[3]))
                        staticcall address(('cd', 4)[3]).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ('cd', 4)[0]:
                            revert with 0, 'ERR_BALANCE'
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 711] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 743] = coreAddress
                        require ext_code.size(address(('cd', 4)[3]))
                        staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(msg.sender), coreAddress
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 707
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ('cd', 4)[0]:
                            revert with 0, 'ERR_ALLOWANCE'
                        if ('cd', 4)[8] <= block.timestamp:
                            revert with 0, 'ERR_EXPIRY'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                            revert with 0, 'INVALID_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                            revert with 0, 'INVALID_PATH'
                        idx = 0
                        s = mem[128]
                        while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                            if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                revert with 'NH{q', 50
                            _15952 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                            if idx >= mem[544]:
                                revert with 'NH{q', 50
                            _16145 = mem[(32 * idx) + 576]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[544]:
                                revert with 'NH{q', 50
                            _17082 = mem[(32 * idx + 1) + 576]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = address(_16145)
                            mem[mem[64] + 68] = address(_17082)
                            require ext_code.size(address(_15952))
                            staticcall address(_15952).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args s, address(_16145), address(_17082)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17895 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_17895] == mem[_17895]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_17895]
                            continue 
                        if mem[128] + (_18183 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                            revert with 0, 'ERR_CURRENT_AMT'
                        if mem[192] > 2:
                            revert with 'NH{q', 33
                        if not mem[192]:
                            _16359 = mem[128]
                            _16528 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18928 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19120 = mem[_18928]
                            mem[mem[64] + 484] = mem[_18928]
                            idx = 0
                            s = _18928 + 32
                            t = mem[64] + 516
                            while idx < _19120:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22576 = mem[mem[288] + 64]
                            mem[mem[64] + 452] = (32 * _19120) + 128
                            _22768 = mem[_22576]
                            mem[mem[64] + (32 * _19120) + 516] = mem[_22576]
                            idx = 0
                            s = _22576 + 32
                            t = mem[64] + (32 * _19120) + 548
                            while idx < _22768:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16528 + 260] = mem[320]
                            mem[_16528 + 292] = mem[352]
                            mem[_16528 + 324] = mem[384]
                            _26224 = mem[416]
                            mem[_16528 + 356] = (32 * _19120) + (32 * _22768) + 512
                            _26416 = mem[_26224]
                            mem[_16528 + (32 * _19120) + (32 * _22768) + 548] = mem[_26224]
                            mem[_16528 + (32 * _19120) + (32 * _22768) + 580 len ceil32(_26416)] = mem[_26224 + 32 len ceil32(_26416)]
                            var421001 = ceil32(_26416)
                            if ceil32(_26416) <= _26416:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16359 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16528 + (32 * _19120) + (32 * _22768) + ceil32(_26416) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28528 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28528] == mem[_28528]
                            else:
                                mem[_16528 + (32 * _19120) + (32 * _22768) + _26416 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16359 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16528 + (32 * _19120) + (32 * _22768) + ceil32(_26416) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28720 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28720] == mem[_28720]
                        else:
                            _16529 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            _18545 = mem[288]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18929 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19121 = mem[_18929]
                            mem[mem[64] + 484] = mem[_18929]
                            idx = 0
                            s = _18929 + 32
                            t = mem[64] + 516
                            while idx < _19121:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22577 = mem[_18545 + 64]
                            mem[_16529 + 452] = (32 * _19121) + 128
                            _22769 = mem[_22577]
                            mem[_16529 + (32 * _19121) + 516] = mem[_22577]
                            idx = 0
                            s = _22577 + 32
                            t = _16529 + (32 * _19121) + 548
                            while idx < _22769:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16529 + 260] = mem[320]
                            mem[_16529 + 292] = mem[352]
                            mem[_16529 + 324] = mem[384]
                            _26225 = mem[416]
                            mem[_16529 + 356] = (32 * _19121) + (32 * _22769) + 512
                            _26417 = mem[_26225]
                            mem[_16529 + (32 * _19121) + (32 * _22769) + 548] = mem[_26225]
                            mem[_16529 + (32 * _19121) + (32 * _22769) + 580 len ceil32(_26417)] = mem[_26225 + 32 len ceil32(_26417)]
                            var421001 = ceil32(_26417)
                            if ceil32(_26417) <= _26417:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16529 + (32 * _19121) + (32 * _22769) + ceil32(_26417) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28529 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28529] == mem[_28529]
                            else:
                                mem[_16529 + (32 * _19121) + (32 * _22769) + _26417 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16529 + (32 * _19121) + (32 * _22769) + ceil32(_26417) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28721 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28721] == mem[_28721]
                else:
                    if msg.value < ('cd', 4)[0]:
                        revert with 'NH{q', 17
                    call msg.sender with:
                       value msg.value - ('cd', 4)[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FEE_REFUND_FAILED'
                        mem[96] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 547] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 611] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 643] = 64
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 675] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707 len 0] = None
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 579] = 96
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707
                        mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 579
                        if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[3]) != mem[588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if ('cd', 4)[2] > 2:
                            revert with 'NH{q', 33
                        if not ('cd', 4)[2]:
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15958 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16151 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _17091 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16151)
                                mem[mem[64] + 68] = address(_17091)
                                require ext_code.size(address(_15958))
                                staticcall address(_15958).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16151), address(_17091)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17898 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17898] == mem[_17898]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17898]
                                continue 
                            if mem[128] + (_18186 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16535 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18551 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18935 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19127 = mem[_18935]
                                mem[mem[64] + 484] = mem[_18935]
                                idx = 0
                                s = _18935 + 32
                                t = mem[64] + 516
                                while idx < _19127:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22583 = mem[_18551 + 64]
                                mem[_16535 + 452] = (32 * _19127) + 128
                                _22775 = mem[_22583]
                                mem[_16535 + (32 * _19127) + 516] = mem[_22583]
                                idx = 0
                                s = _22583 + 32
                                t = _16535 + (32 * _19127) + 548
                                while idx < _22775:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16535 + 260] = mem[320]
                                mem[_16535 + 292] = mem[352]
                                mem[_16535 + 324] = mem[384]
                                _26231 = mem[416]
                                mem[_16535 + 356] = (32 * _19127) + (32 * _22775) + 512
                                _26423 = mem[_26231]
                                mem[_16535 + (32 * _19127) + (32 * _22775) + 548] = mem[_26231]
                                mem[_16535 + (32 * _19127) + (32 * _22775) + 580 len ceil32(_26423)] = mem[_26231 + 32 len ceil32(_26423)]
                                var389001 = ceil32(_26423)
                                if ceil32(_26423) <= _26423:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16535 + (32 * _19127) + (32 * _22775) + ceil32(_26423) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28535 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28535] == mem[_28535]
                                else:
                                    mem[_16535 + (32 * _19127) + (32 * _22775) + _26423 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16535 + (32 * _19127) + (32 * _22775) + ceil32(_26423) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28727 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28727] == mem[_28727]
                            else:
                                _16362 = mem[128]
                                _16534 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18550 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18934 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19126 = mem[_18934]
                                mem[mem[64] + 484] = mem[_18934]
                                idx = 0
                                s = _18934 + 32
                                t = mem[64] + 516
                                while idx < _19126:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22582 = mem[_18550 + 64]
                                mem[_16534 + 452] = (32 * _19126) + 128
                                _22774 = mem[_22582]
                                mem[_16534 + (32 * _19126) + 516] = mem[_22582]
                                idx = 0
                                s = _22582 + 32
                                t = _16534 + (32 * _19126) + 548
                                while idx < _22774:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16534 + 260] = mem[320]
                                mem[_16534 + 292] = mem[352]
                                mem[_16534 + 324] = mem[384]
                                _26230 = mem[416]
                                mem[_16534 + 356] = (32 * _19126) + (32 * _22774) + 512
                                _26422 = mem[_26230]
                                mem[_16534 + (32 * _19126) + (32 * _22774) + 548] = mem[_26230]
                                mem[_16534 + (32 * _19126) + (32 * _22774) + 580 len ceil32(_26422)] = mem[_26230 + 32 len ceil32(_26422)]
                                var389001 = ceil32(_26422)
                                if ceil32(_26422) <= _26422:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16362 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16534 + (32 * _19126) + (32 * _22774) + ceil32(_26422) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28534 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28534] == mem[_28534]
                                else:
                                    mem[_16534 + (32 * _19126) + (32 * _22774) + _26422 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16362 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16534 + (32 * _19126) + (32 * _22774) + ceil32(_26422) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28726 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28726] == mem[_28726]
                        else:
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 711] = msg.sender
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 707] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_BALANCE'
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 711] = msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 743] = coreAddress
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(msg.sender), coreAddress
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 707
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_ALLOWANCE'
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15960 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16153 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _17094 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16153)
                                mem[mem[64] + 68] = address(_17094)
                                require ext_code.size(address(_15960))
                                staticcall address(_15960).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16153), address(_17094)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17899 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17899] == mem[_17899]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17899]
                                continue 
                            if mem[128] + (_18187 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16537 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18553 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18937 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19129 = mem[_18937]
                                mem[mem[64] + 484] = mem[_18937]
                                idx = 0
                                s = _18937 + 32
                                t = mem[64] + 516
                                while idx < _19129:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22585 = mem[_18553 + 64]
                                mem[_16537 + 452] = (32 * _19129) + 128
                                _22777 = mem[_22585]
                                mem[_16537 + (32 * _19129) + 516] = mem[_22585]
                                idx = 0
                                s = _22585 + 32
                                t = _16537 + (32 * _19129) + 548
                                while idx < _22777:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16537 + 260] = mem[320]
                                mem[_16537 + 292] = mem[352]
                                mem[_16537 + 324] = mem[384]
                                _26233 = mem[416]
                                mem[_16537 + 356] = (32 * _19129) + (32 * _22777) + 512
                                _26425 = mem[_26233]
                                mem[_16537 + (32 * _19129) + (32 * _22777) + 548] = mem[_26233]
                                mem[_16537 + (32 * _19129) + (32 * _22777) + 580 len ceil32(_26425)] = mem[_26233 + 32 len ceil32(_26425)]
                                var438001 = ceil32(_26425)
                                if ceil32(_26425) <= _26425:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16537 + (32 * _19129) + (32 * _22777) + ceil32(_26425) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28537 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28537] == mem[_28537]
                                else:
                                    mem[_16537 + (32 * _19129) + (32 * _22777) + _26425 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16537 + (32 * _19129) + (32 * _22777) + ceil32(_26425) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28729 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28729] == mem[_28729]
                            else:
                                _16363 = mem[128]
                                _16536 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18552 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18936 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19128 = mem[_18936]
                                mem[mem[64] + 484] = mem[_18936]
                                idx = 0
                                s = _18936 + 32
                                t = mem[64] + 516
                                while idx < _19128:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22584 = mem[_18552 + 64]
                                mem[_16536 + 452] = (32 * _19128) + 128
                                _22776 = mem[_22584]
                                mem[_16536 + (32 * _19128) + 516] = mem[_22584]
                                idx = 0
                                s = _22584 + 32
                                t = _16536 + (32 * _19128) + 548
                                while idx < _22776:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16536 + 260] = mem[320]
                                mem[_16536 + 292] = mem[352]
                                mem[_16536 + 324] = mem[384]
                                _26232 = mem[416]
                                mem[_16536 + 356] = (32 * _19128) + (32 * _22776) + 512
                                _26424 = mem[_26232]
                                mem[_16536 + (32 * _19128) + (32 * _22776) + 548] = mem[_26232]
                                mem[_16536 + (32 * _19128) + (32 * _22776) + 580 len ceil32(_26424)] = mem[_26232 + 32 len ceil32(_26424)]
                                var438001 = ceil32(_26424)
                                if ceil32(_26424) <= _26424:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16363 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16536 + (32 * _19128) + (32 * _22776) + ceil32(_26424) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28536 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28536] == mem[_28536]
                                else:
                                    mem[_16536 + (32 * _19128) + (32 * _22776) + _26424 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16363 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16536 + (32 * _19128) + (32 * _22776) + ceil32(_26424) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28728 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28728] == mem[_28728]
                    else:
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 547] = return_data.size
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 579 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FEE_REFUND_FAILED'
                        mem[96] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 548] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 612] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 644] = 64
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 676] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 708 len 0] = None
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 580] = 96
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 708
                        mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 580
                        if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[3]) != mem[588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if ('cd', 4)[2] > 2:
                            revert with 'NH{q', 33
                        if not ('cd', 4)[2]:
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15966 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16159 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _17103 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16159)
                                mem[mem[64] + 68] = address(_17103)
                                require ext_code.size(address(_15966))
                                staticcall address(_15966).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16159), address(_17103)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17902 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17902] == mem[_17902]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17902]
                                continue 
                            if mem[128] + (_18190 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16543 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18559 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18943 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19135 = mem[_18943]
                                mem[mem[64] + 484] = mem[_18943]
                                idx = 0
                                s = _18943 + 32
                                t = mem[64] + 516
                                while idx < _19135:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22591 = mem[_18559 + 64]
                                mem[_16543 + 452] = (32 * _19135) + 128
                                _22783 = mem[_22591]
                                mem[_16543 + (32 * _19135) + 516] = mem[_22591]
                                idx = 0
                                s = _22591 + 32
                                t = _16543 + (32 * _19135) + 548
                                while idx < _22783:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16543 + 260] = mem[320]
                                mem[_16543 + 292] = mem[352]
                                mem[_16543 + 324] = mem[384]
                                _26239 = mem[416]
                                mem[_16543 + 356] = (32 * _19135) + (32 * _22783) + 512
                                _26431 = mem[_26239]
                                mem[_16543 + (32 * _19135) + (32 * _22783) + 548] = mem[_26239]
                                mem[_16543 + (32 * _19135) + (32 * _22783) + 580 len ceil32(_26431)] = mem[_26239 + 32 len ceil32(_26431)]
                                var389001 = ceil32(_26431)
                                if ceil32(_26431) <= _26431:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16543 + (32 * _19135) + (32 * _22783) + ceil32(_26431) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28543 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28543] == mem[_28543]
                                else:
                                    mem[_16543 + (32 * _19135) + (32 * _22783) + _26431 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16543 + (32 * _19135) + (32 * _22783) + ceil32(_26431) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28735 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28735] == mem[_28735]
                            else:
                                _16366 = mem[128]
                                _16542 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18558 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18942 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19134 = mem[_18942]
                                mem[mem[64] + 484] = mem[_18942]
                                idx = 0
                                s = _18942 + 32
                                t = mem[64] + 516
                                while idx < _19134:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22590 = mem[_18558 + 64]
                                mem[_16542 + 452] = (32 * _19134) + 128
                                _22782 = mem[_22590]
                                mem[_16542 + (32 * _19134) + 516] = mem[_22590]
                                idx = 0
                                s = _22590 + 32
                                t = _16542 + (32 * _19134) + 548
                                while idx < _22782:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16542 + 260] = mem[320]
                                mem[_16542 + 292] = mem[352]
                                mem[_16542 + 324] = mem[384]
                                _26238 = mem[416]
                                mem[_16542 + 356] = (32 * _19134) + (32 * _22782) + 512
                                _26430 = mem[_26238]
                                mem[_16542 + (32 * _19134) + (32 * _22782) + 548] = mem[_26238]
                                mem[_16542 + (32 * _19134) + (32 * _22782) + 580 len ceil32(_26430)] = mem[_26238 + 32 len ceil32(_26430)]
                                var389001 = ceil32(_26430)
                                if ceil32(_26430) <= _26430:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16366 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16542 + (32 * _19134) + (32 * _22782) + ceil32(_26430) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28542 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28542] == mem[_28542]
                                else:
                                    mem[_16542 + (32 * _19134) + (32 * _22782) + _26430 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16366 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16542 + (32 * _19134) + (32 * _22782) + ceil32(_26430) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28734 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28734] == mem[_28734]
                        else:
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 712] = msg.sender
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 708] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_BALANCE'
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 712] = msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 744] = coreAddress
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(msg.sender), coreAddress
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 708] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 708
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_ALLOWANCE'
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15968 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16161 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _17106 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16161)
                                mem[mem[64] + 68] = address(_17106)
                                require ext_code.size(address(_15968))
                                staticcall address(_15968).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16161), address(_17106)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17903 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17903] == mem[_17903]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17903]
                                continue 
                            if mem[128] + (_18191 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16545 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18945 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19137 = mem[_18945]
                                mem[mem[64] + 484] = mem[_18945]
                                idx = 0
                                s = _18945 + 32
                                t = mem[64] + 516
                                while idx < _19137:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22593 = mem[mem[288] + 64]
                                mem[mem[64] + 452] = (32 * _19137) + 128
                                _22785 = mem[_22593]
                                mem[mem[64] + (32 * _19137) + 516] = mem[_22593]
                                idx = 0
                                s = _22593 + 32
                                t = mem[64] + (32 * _19137) + 548
                                while idx < _22785:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16545 + 260] = mem[320]
                                mem[_16545 + 292] = mem[352]
                                mem[_16545 + 324] = mem[384]
                                _26241 = mem[416]
                                mem[_16545 + 356] = (32 * _19137) + (32 * _22785) + 512
                                _26433 = mem[_26241]
                                mem[_16545 + (32 * _19137) + (32 * _22785) + 548] = mem[_26241]
                                mem[_16545 + (32 * _19137) + (32 * _22785) + 580 len ceil32(_26433)] = mem[_26241 + 32 len ceil32(_26433)]
                                var438001 = ceil32(_26433)
                                if ceil32(_26433) <= _26433:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16545 + (32 * _19137) + (32 * _22785) + ceil32(_26433) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28545 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28545] == mem[_28545]
                                else:
                                    mem[_16545 + (32 * _19137) + (32 * _22785) + _26433 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16545 + (32 * _19137) + (32 * _22785) + ceil32(_26433) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28737 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28737] == mem[_28737]
                            else:
                                _16367 = mem[128]
                                _16544 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18560 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18944 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19136 = mem[_18944]
                                mem[mem[64] + 484] = mem[_18944]
                                idx = 0
                                s = _18944 + 32
                                t = mem[64] + 516
                                while idx < _19136:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22592 = mem[_18560 + 64]
                                mem[_16544 + 452] = (32 * _19136) + 128
                                _22784 = mem[_22592]
                                mem[_16544 + (32 * _19136) + 516] = mem[_22592]
                                idx = 0
                                s = _22592 + 32
                                t = _16544 + (32 * _19136) + 548
                                while idx < _22784:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16544 + 260] = mem[320]
                                mem[_16544 + 292] = mem[352]
                                mem[_16544 + 324] = mem[384]
                                _26240 = mem[416]
                                mem[_16544 + 356] = (32 * _19136) + (32 * _22784) + 512
                                _26432 = mem[_26240]
                                mem[_16544 + (32 * _19136) + (32 * _22784) + 548] = mem[_26240]
                                mem[_16544 + (32 * _19136) + (32 * _22784) + 580 len ceil32(_26432)] = mem[_26240 + 32 len ceil32(_26432)]
                                var438001 = ceil32(_26432)
                                if ceil32(_26432) <= _26432:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16367 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16544 + (32 * _19136) + (32 * _22784) + ceil32(_26432) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28544 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28544] == mem[_28544]
                                else:
                                    mem[_16544 + (32 * _19136) + (32 * _22784) + _26432 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16367 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16544 + (32 * _19136) + (32 * _22784) + ceil32(_26432) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28736 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28736] == mem[_28736]
            else:
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 551] = this.address
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 583] = uint8(cd[36])
                require ext_code.size(feeManagerAddress)
                staticcall feeManagerAddress.0x2506d6f0 with:
                        gas gas_remaining wei
                       args address(this.address), uint8(cd[36])
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 547] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > msg.value:
                    revert with 0, 'TX_UNDERPRICED'
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 551] = msg.sender
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 583] = uint8(cd[36])
                mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 615] = cd[68]
                require ext_code.size(feeManagerAddress)
                call feeManagerAddress.0x156d0c19 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args msg.sender, cd[36] << 248, cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if msg.value < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if msg.value - ext_call.return_data[0] <= ('cd', 4)[0]:
                    if msg.value - ext_call.return_data[0] < ('cd', 4)[0]:
                        revert with 0, 'TX_UNDERPRICED'
                    mem[96] = msg.sender
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 547] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 611] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 643] = 64
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 675] = 0
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707 len 0] = None
                    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 579] = 96
                    mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707
                    mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 579
                    if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                        revert with 'NH{q', 50
                    if address(('cd', 4)[3]) != mem[588 len 20]:
                        revert with 0, 'ERR_PATH'
                    if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                        revert with 'NH{q', 17
                    if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                        revert with 'NH{q', 50
                    if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                        revert with 0, 'ERR_PATH'
                    if ('cd', 4)[2] > 2:
                        revert with 'NH{q', 33
                    if not ('cd', 4)[2]:
                        if ('cd', 4)[8] <= block.timestamp:
                            revert with 0, 'ERR_EXPIRY'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                            revert with 0, 'INVALID_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                            revert with 0, 'INVALID_PATH'
                        idx = 0
                        s = mem[128]
                        while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                            if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                revert with 'NH{q', 50
                            _15974 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                            if idx >= mem[544]:
                                revert with 'NH{q', 50
                            _16167 = mem[(32 * idx) + 576]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[544]:
                                revert with 'NH{q', 50
                            _17115 = mem[(32 * idx + 1) + 576]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = address(_16167)
                            mem[mem[64] + 68] = address(_17115)
                            require ext_code.size(address(_15974))
                            staticcall address(_15974).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args s, address(_16167), address(_17115)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17906 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_17906] == mem[_17906]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_17906]
                            continue 
                        if mem[128] + (_18194 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                            revert with 0, 'ERR_CURRENT_AMT'
                        if mem[192] > 2:
                            revert with 'NH{q', 33
                        if not mem[192]:
                            _16370 = mem[128]
                            _16550 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18950 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19142 = mem[_18950]
                            mem[mem[64] + 484] = mem[_18950]
                            idx = 0
                            s = _18950 + 32
                            t = mem[64] + 516
                            while idx < _19142:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22598 = mem[mem[288] + 64]
                            mem[mem[64] + 452] = (32 * _19142) + 128
                            _22790 = mem[_22598]
                            mem[mem[64] + (32 * _19142) + 516] = mem[_22598]
                            idx = 0
                            s = _22598 + 32
                            t = mem[64] + (32 * _19142) + 548
                            while idx < _22790:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16550 + 260] = mem[320]
                            mem[_16550 + 292] = mem[352]
                            mem[_16550 + 324] = mem[384]
                            _26246 = mem[416]
                            mem[_16550 + 356] = (32 * _19142) + (32 * _22790) + 512
                            _26438 = mem[_26246]
                            mem[_16550 + (32 * _19142) + (32 * _22790) + 548] = mem[_26246]
                            mem[_16550 + (32 * _19142) + (32 * _22790) + 580 len ceil32(_26438)] = mem[_26246 + 32 len ceil32(_26438)]
                            if ceil32(_26438) <= _26438:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16370 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16550 + (32 * _19142) + (32 * _22790) + ceil32(_26438) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28550 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28550] == mem[_28550]
                            else:
                                mem[_16550 + (32 * _19142) + (32 * _22790) + _26438 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16370 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16550 + (32 * _19142) + (32 * _22790) + ceil32(_26438) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28742 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28742] == mem[_28742]
                        else:
                            _16551 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            _18567 = mem[288]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18951 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19143 = mem[_18951]
                            mem[mem[64] + 484] = mem[_18951]
                            idx = 0
                            s = _18951 + 32
                            t = mem[64] + 516
                            while idx < _19143:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22599 = mem[_18567 + 64]
                            mem[_16551 + 452] = (32 * _19143) + 128
                            _22791 = mem[_22599]
                            mem[_16551 + (32 * _19143) + 516] = mem[_22599]
                            idx = 0
                            s = _22599 + 32
                            t = _16551 + (32 * _19143) + 548
                            while idx < _22791:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16551 + 260] = mem[320]
                            mem[_16551 + 292] = mem[352]
                            mem[_16551 + 324] = mem[384]
                            _26247 = mem[416]
                            mem[_16551 + 356] = (32 * _19143) + (32 * _22791) + 512
                            _26439 = mem[_26247]
                            mem[_16551 + (32 * _19143) + (32 * _22791) + 548] = mem[_26247]
                            mem[_16551 + (32 * _19143) + (32 * _22791) + 580 len ceil32(_26439)] = mem[_26247 + 32 len ceil32(_26439)]
                            if ceil32(_26439) <= _26439:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16551 + (32 * _19143) + (32 * _22791) + ceil32(_26439) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28551 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28551] == mem[_28551]
                            else:
                                mem[_16551 + (32 * _19143) + (32 * _22791) + _26439 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16551 + (32 * _19143) + (32 * _22791) + ceil32(_26439) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28743 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28743] == mem[_28743]
                    else:
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 711] = msg.sender
                        require ext_code.size(address(('cd', 4)[3]))
                        staticcall address(('cd', 4)[3]).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ('cd', 4)[0]:
                            revert with 0, 'ERR_BALANCE'
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 711] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 743] = coreAddress
                        require ext_code.size(address(('cd', 4)[3]))
                        staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(msg.sender), coreAddress
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 707] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (4 * ceil32(return_data.size)) + 707
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ('cd', 4)[0]:
                            revert with 0, 'ERR_ALLOWANCE'
                        if ('cd', 4)[8] <= block.timestamp:
                            revert with 0, 'ERR_EXPIRY'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                            revert with 0, 'INVALID_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                            revert with 0, 'INVALID_PATH'
                        idx = 0
                        s = mem[128]
                        while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                            if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                revert with 'NH{q', 50
                            _15976 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                            if idx >= mem[544]:
                                revert with 'NH{q', 50
                            _16169 = mem[(32 * idx) + 576]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[544]:
                                revert with 'NH{q', 50
                            _17118 = mem[(32 * idx + 1) + 576]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = address(_16169)
                            mem[mem[64] + 68] = address(_17118)
                            require ext_code.size(address(_15976))
                            staticcall address(_15976).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args s, address(_16169), address(_17118)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17907 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_17907] == mem[_17907]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_17907]
                            continue 
                        if mem[128] + (_18195 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                            revert with 0, 'ERR_CURRENT_AMT'
                        if mem[192] > 2:
                            revert with 'NH{q', 33
                        if mem[192]:
                            _16553 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18953 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19145 = mem[_18953]
                            mem[mem[64] + 484] = mem[_18953]
                            idx = 0
                            s = _18953 + 32
                            t = mem[64] + 516
                            while idx < _19145:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22601 = mem[mem[288] + 64]
                            mem[mem[64] + 452] = (32 * _19145) + 128
                            _22793 = mem[_22601]
                            mem[mem[64] + (32 * _19145) + 516] = mem[_22601]
                            idx = 0
                            s = _22601 + 32
                            t = mem[64] + (32 * _19145) + 548
                            while idx < _22793:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16553 + 260] = mem[320]
                            mem[_16553 + 292] = mem[352]
                            mem[_16553 + 324] = mem[384]
                            _26249 = mem[416]
                            mem[_16553 + 356] = (32 * _19145) + (32 * _22793) + 512
                            _26441 = mem[_26249]
                            mem[_16553 + (32 * _19145) + (32 * _22793) + 548] = mem[_26249]
                            mem[_16553 + (32 * _19145) + (32 * _22793) + 580 len ceil32(_26441)] = mem[_26249 + 32 len ceil32(_26441)]
                            if ceil32(_26441) <= _26441:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16553 + (32 * _19145) + (32 * _22793) + ceil32(_26441) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28553 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28553] == mem[_28553]
                            else:
                                mem[_16553 + (32 * _19145) + (32 * _22793) + _26441 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16553 + (32 * _19145) + (32 * _22793) + ceil32(_26441) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28745 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28745] == mem[_28745]
                        else:
                            _16371 = mem[128]
                            _16552 = mem[64]
                            mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[108 len 20]
                            mem[mem[64] + 68] = mem[128]
                            mem[mem[64] + 100] = mem[160]
                            if mem[192] >= 3:
                                revert with 'NH{q', 33
                            mem[mem[64] + 132] = mem[192]
                            mem[mem[64] + 164] = mem[236 len 20]
                            mem[mem[64] + 196] = mem[268 len 20]
                            _18568 = mem[288]
                            mem[mem[64] + 228] = 352
                            mem[mem[64] + 388] = mem[mem[288]]
                            _18952 = mem[mem[288] + 32]
                            mem[mem[64] + 420] = 96
                            _19144 = mem[_18952]
                            mem[mem[64] + 484] = mem[_18952]
                            idx = 0
                            s = _18952 + 32
                            t = mem[64] + 516
                            while idx < _19144:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _22600 = mem[_18568 + 64]
                            mem[_16552 + 452] = (32 * _19144) + 128
                            _22792 = mem[_22600]
                            mem[_16552 + (32 * _19144) + 516] = mem[_22600]
                            idx = 0
                            s = _22600 + 32
                            t = _16552 + (32 * _19144) + 548
                            while idx < _22792:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if mem[320] >= 7:
                                revert with 'NH{q', 33
                            mem[_16552 + 260] = mem[320]
                            mem[_16552 + 292] = mem[352]
                            mem[_16552 + 324] = mem[384]
                            _26248 = mem[416]
                            mem[_16552 + 356] = (32 * _19144) + (32 * _22792) + 512
                            _26440 = mem[_26248]
                            mem[_16552 + (32 * _19144) + (32 * _22792) + 548] = mem[_26248]
                            mem[_16552 + (32 * _19144) + (32 * _22792) + 580 len ceil32(_26440)] = mem[_26248 + 32 len ceil32(_26440)]
                            if ceil32(_26440) <= _26440:
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16371 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16552 + (32 * _19144) + (32 * _22792) + ceil32(_26440) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28552 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28552] == mem[_28552]
                            else:
                                mem[_16552 + (32 * _19144) + (32 * _22792) + _26440 + 580] = 0
                                require ext_code.size(coreAddress)
                                call coreAddress.mem[mem[64] len 4] with:
                                   value _16371 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _16552 + (32 * _19144) + (32 * _22792) + ceil32(_26440) + -mem[64] + 576]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _28744 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_28744] == mem[_28744]
                else:
                    if msg.value - ext_call.return_data[0] < ('cd', 4)[0]:
                        revert with 'NH{q', 17
                    call msg.sender with:
                       value msg.value - ext_call.return_data[0] - ('cd', 4)[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'FEE_REFUND_FAILED'
                        mem[96] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 547] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 611] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 643] = 64
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 675] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707 len 0] = None
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 579] = 96
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707
                        mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 579
                        if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[3]) != mem[588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if ('cd', 4)[2] > 2:
                            revert with 'NH{q', 33
                        if not ('cd', 4)[2]:
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15982 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16175 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _17127 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16175)
                                mem[mem[64] + 68] = address(_17127)
                                require ext_code.size(address(_15982))
                                staticcall address(_15982).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16175), address(_17127)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17910 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17910] == mem[_17910]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17910]
                                continue 
                            if mem[128] + (_18198 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16559 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18575 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18959 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19151 = mem[_18959]
                                mem[mem[64] + 484] = mem[_18959]
                                idx = 0
                                s = _18959 + 32
                                t = mem[64] + 516
                                while idx < _19151:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22607 = mem[_18575 + 64]
                                mem[_16559 + 452] = (32 * _19151) + 128
                                _22799 = mem[_22607]
                                mem[_16559 + (32 * _19151) + 516] = mem[_22607]
                                idx = 0
                                s = _22607 + 32
                                t = _16559 + (32 * _19151) + 548
                                while idx < _22799:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16559 + 260] = mem[320]
                                mem[_16559 + 292] = mem[352]
                                mem[_16559 + 324] = mem[384]
                                _26255 = mem[416]
                                mem[_16559 + 356] = (32 * _19151) + (32 * _22799) + 512
                                _26447 = mem[_26255]
                                mem[_16559 + (32 * _19151) + (32 * _22799) + 548] = mem[_26255]
                                mem[_16559 + (32 * _19151) + (32 * _22799) + 580 len ceil32(_26447)] = mem[_26255 + 32 len ceil32(_26447)]
                                var421001 = ceil32(_26447)
                                if ceil32(_26447) <= _26447:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16559 + (32 * _19151) + (32 * _22799) + ceil32(_26447) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28559 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28559] == mem[_28559]
                                else:
                                    mem[_16559 + (32 * _19151) + (32 * _22799) + _26447 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16559 + (32 * _19151) + (32 * _22799) + ceil32(_26447) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28751 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28751] == mem[_28751]
                            else:
                                _16374 = mem[128]
                                _16558 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18574 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18958 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19150 = mem[_18958]
                                mem[mem[64] + 484] = mem[_18958]
                                idx = 0
                                s = _18958 + 32
                                t = mem[64] + 516
                                while idx < _19150:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22606 = mem[_18574 + 64]
                                mem[_16558 + 452] = (32 * _19150) + 128
                                _22798 = mem[_22606]
                                mem[_16558 + (32 * _19150) + 516] = mem[_22606]
                                idx = 0
                                s = _22606 + 32
                                t = _16558 + (32 * _19150) + 548
                                while idx < _22798:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16558 + 260] = mem[320]
                                mem[_16558 + 292] = mem[352]
                                mem[_16558 + 324] = mem[384]
                                _26254 = mem[416]
                                mem[_16558 + 356] = (32 * _19150) + (32 * _22798) + 512
                                _26446 = mem[_26254]
                                mem[_16558 + (32 * _19150) + (32 * _22798) + 548] = mem[_26254]
                                mem[_16558 + (32 * _19150) + (32 * _22798) + 580 len ceil32(_26446)] = mem[_26254 + 32 len ceil32(_26446)]
                                var421001 = ceil32(_26446)
                                if ceil32(_26446) <= _26446:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16374 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16558 + (32 * _19150) + (32 * _22798) + ceil32(_26446) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28558 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28558] == mem[_28558]
                                else:
                                    mem[_16558 + (32 * _19150) + (32 * _22798) + _26446 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16374 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16558 + (32 * _19150) + (32 * _22798) + ceil32(_26446) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28750 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28750] == mem[_28750]
                        else:
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 711] = msg.sender
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 707] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_BALANCE'
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 711] = msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 743] = coreAddress
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(msg.sender), coreAddress
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + 707] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (4 * ceil32(return_data.size)) + 707
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_ALLOWANCE'
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15984 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16177 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _17130 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16177)
                                mem[mem[64] + 68] = address(_17130)
                                require ext_code.size(address(_15984))
                                staticcall address(_15984).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16177), address(_17130)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17911 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17911] == mem[_17911]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17911]
                                continue 
                            if mem[128] + (_18199 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16561 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18577 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18961 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19153 = mem[_18961]
                                mem[mem[64] + 484] = mem[_18961]
                                idx = 0
                                s = _18961 + 32
                                t = mem[64] + 516
                                while idx < _19153:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22609 = mem[_18577 + 64]
                                mem[_16561 + 452] = (32 * _19153) + 128
                                _22801 = mem[_22609]
                                mem[_16561 + (32 * _19153) + 516] = mem[_22609]
                                idx = 0
                                s = _22609 + 32
                                t = _16561 + (32 * _19153) + 548
                                while idx < _22801:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16561 + 260] = mem[320]
                                mem[_16561 + 292] = mem[352]
                                mem[_16561 + 324] = mem[384]
                                _26257 = mem[416]
                                mem[_16561 + 356] = (32 * _19153) + (32 * _22801) + 512
                                _26449 = mem[_26257]
                                mem[_16561 + (32 * _19153) + (32 * _22801) + 548] = mem[_26257]
                                mem[_16561 + (32 * _19153) + (32 * _22801) + 580 len ceil32(_26449)] = mem[_26257 + 32 len ceil32(_26449)]
                                if ceil32(_26449) <= _26449:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16561 + (32 * _19153) + (32 * _22801) + ceil32(_26449) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28561 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28561] == mem[_28561]
                                else:
                                    mem[_16561 + (32 * _19153) + (32 * _22801) + _26449 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16561 + (32 * _19153) + (32 * _22801) + ceil32(_26449) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28753 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28753] == mem[_28753]
                            else:
                                _16375 = mem[128]
                                _16560 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18576 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18960 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19152 = mem[_18960]
                                mem[mem[64] + 484] = mem[_18960]
                                idx = 0
                                s = _18960 + 32
                                t = mem[64] + 516
                                while idx < _19152:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22608 = mem[_18576 + 64]
                                mem[_16560 + 452] = (32 * _19152) + 128
                                _22800 = mem[_22608]
                                mem[_16560 + (32 * _19152) + 516] = mem[_22608]
                                idx = 0
                                s = _22608 + 32
                                t = _16560 + (32 * _19152) + 548
                                while idx < _22800:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16560 + 260] = mem[320]
                                mem[_16560 + 292] = mem[352]
                                mem[_16560 + 324] = mem[384]
                                _26256 = mem[416]
                                mem[_16560 + 356] = (32 * _19152) + (32 * _22800) + 512
                                _26448 = mem[_26256]
                                mem[_16560 + (32 * _19152) + (32 * _22800) + 548] = mem[_26256]
                                mem[_16560 + (32 * _19152) + (32 * _22800) + 580 len ceil32(_26448)] = mem[_26256 + 32 len ceil32(_26448)]
                                if ceil32(_26448) <= _26448:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16375 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16560 + (32 * _19152) + (32 * _22800) + ceil32(_26448) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28560 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28560] == mem[_28560]
                                else:
                                    mem[_16560 + (32 * _19152) + (32 * _22800) + _26448 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16375 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16560 + (32 * _19152) + (32 * _22800) + ceil32(_26448) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28752 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28752] == mem[_28752]
                    else:
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 547] = return_data.size
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 579 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'FEE_REFUND_FAILED'
                        mem[96] = msg.sender
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 548] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 612] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 644] = 64
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 676] = 0
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 708 len 0] = None
                        mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 580] = 96
                        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 708
                        mem[416] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 580
                        if 0 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[3]) != mem[588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                            revert with 'NH{q', 17
                        if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
                            revert with 'NH{q', 50
                        if address(('cd', 4)[4]) != mem[(32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1) + 588 len 20]:
                            revert with 0, 'ERR_PATH'
                        if ('cd', 4)[2] > 2:
                            revert with 'NH{q', 33
                        if not ('cd', 4)[2]:
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15990 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16183 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _17139 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16183)
                                mem[mem[64] + 68] = address(_17139)
                                require ext_code.size(address(_15990))
                                staticcall address(_15990).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16183), address(_17139)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17914 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17914] == mem[_17914]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17914]
                                continue 
                            if mem[128] + (_18202 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16567 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18583 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18967 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19159 = mem[_18967]
                                mem[mem[64] + 484] = mem[_18967]
                                idx = 0
                                s = _18967 + 32
                                t = mem[64] + 516
                                while idx < _19159:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22615 = mem[_18583 + 64]
                                mem[_16567 + 452] = (32 * _19159) + 128
                                _22807 = mem[_22615]
                                mem[_16567 + (32 * _19159) + 516] = mem[_22615]
                                idx = 0
                                s = _22615 + 32
                                t = _16567 + (32 * _19159) + 548
                                while idx < _22807:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16567 + 260] = mem[320]
                                mem[_16567 + 292] = mem[352]
                                mem[_16567 + 324] = mem[384]
                                _26263 = mem[416]
                                mem[_16567 + 356] = (32 * _19159) + (32 * _22807) + 512
                                _26455 = mem[_26263]
                                mem[_16567 + (32 * _19159) + (32 * _22807) + 548] = mem[_26263]
                                mem[_16567 + (32 * _19159) + (32 * _22807) + 580 len ceil32(_26455)] = mem[_26263 + 32 len ceil32(_26455)]
                                var421001 = ceil32(_26455)
                                if ceil32(_26455) <= _26455:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16567 + (32 * _19159) + (32 * _22807) + ceil32(_26455) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28567 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28567] == mem[_28567]
                                else:
                                    mem[_16567 + (32 * _19159) + (32 * _22807) + _26455 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16567 + (32 * _19159) + (32 * _22807) + ceil32(_26455) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28759 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28759] == mem[_28759]
                            else:
                                _16378 = mem[128]
                                _16566 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18582 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18966 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19158 = mem[_18966]
                                mem[mem[64] + 484] = mem[_18966]
                                idx = 0
                                s = _18966 + 32
                                t = mem[64] + 516
                                while idx < _19158:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22614 = mem[_18582 + 64]
                                mem[_16566 + 452] = (32 * _19158) + 128
                                _22806 = mem[_22614]
                                mem[_16566 + (32 * _19158) + 516] = mem[_22614]
                                idx = 0
                                s = _22614 + 32
                                t = _16566 + (32 * _19158) + 548
                                while idx < _22806:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16566 + 260] = mem[320]
                                mem[_16566 + 292] = mem[352]
                                mem[_16566 + 324] = mem[384]
                                _26262 = mem[416]
                                mem[_16566 + 356] = (32 * _19158) + (32 * _22806) + 512
                                _26454 = mem[_26262]
                                mem[_16566 + (32 * _19158) + (32 * _22806) + 548] = mem[_26262]
                                mem[_16566 + (32 * _19158) + (32 * _22806) + 580 len ceil32(_26454)] = mem[_26262 + 32 len ceil32(_26454)]
                                var421001 = ceil32(_26454)
                                if ceil32(_26454) <= _26454:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16378 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16566 + (32 * _19158) + (32 * _22806) + ceil32(_26454) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28566 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28566] == mem[_28566]
                                else:
                                    mem[_16566 + (32 * _19158) + (32 * _22806) + _26454 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16378 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16566 + (32 * _19158) + (32 * _22806) + ceil32(_26454) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28758 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28758] == mem[_28758]
                        else:
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 712] = msg.sender
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 708] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_BALANCE'
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 712] = msg.sender
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 744] = coreAddress
                            require ext_code.size(address(('cd', 4)[3]))
                            staticcall address(('cd', 4)[3]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(msg.sender), coreAddress
                            mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 708] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 708
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ('cd', 4)[0]:
                                revert with 0, 'ERR_ALLOWANCE'
                            if ('cd', 4)[8] <= block.timestamp:
                                revert with 0, 'ERR_EXPIRY'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 2:
                                revert with 0, 'INVALID_PATH'
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] < 1:
                                revert with 'NH{q', 17
                            if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] != cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] - 1:
                                revert with 0, 'INVALID_PATH'
                            idx = 0
                            s = mem[128]
                            while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
                                if idx >= mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545]:
                                    revert with 'NH{q', 50
                                _15992 = mem[(32 * idx) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577]
                                if idx >= mem[544]:
                                    revert with 'NH{q', 50
                                _16185 = mem[(32 * idx) + 576]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[544]:
                                    revert with 'NH{q', 50
                                _17142 = mem[(32 * idx + 1) + 576]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = address(_16185)
                                mem[mem[64] + 68] = address(_17142)
                                require ext_code.size(address(_15992))
                                staticcall address(_15992).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args s, address(_16185), address(_17142)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17915 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_17915] == mem[_17915]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_17915]
                                continue 
                            if mem[128] + (_18203 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) <= 0:
                                revert with 0, 'ERR_CURRENT_AMT'
                            if mem[192] > 2:
                                revert with 'NH{q', 33
                            if mem[192]:
                                _16569 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18585 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18969 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19161 = mem[_18969]
                                mem[mem[64] + 484] = mem[_18969]
                                idx = 0
                                s = _18969 + 32
                                t = mem[64] + 516
                                while idx < _19161:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22617 = mem[_18585 + 64]
                                mem[_16569 + 452] = (32 * _19161) + 128
                                _22809 = mem[_22617]
                                mem[_16569 + (32 * _19161) + 516] = mem[_22617]
                                idx = 0
                                s = _22617 + 32
                                t = _16569 + (32 * _19161) + 548
                                while idx < _22809:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16569 + 260] = mem[320]
                                mem[_16569 + 292] = mem[352]
                                mem[_16569 + 324] = mem[384]
                                _26265 = mem[416]
                                mem[_16569 + 356] = (32 * _19161) + (32 * _22809) + 512
                                _26457 = mem[_26265]
                                mem[_16569 + (32 * _19161) + (32 * _22809) + 548] = mem[_26265]
                                mem[_16569 + (32 * _19161) + (32 * _22809) + 580 len ceil32(_26457)] = mem[_26265 + 32 len ceil32(_26457)]
                                if ceil32(_26457) <= _26457:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16569 + (32 * _19161) + (32 * _22809) + ceil32(_26457) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28569 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28569] == mem[_28569]
                                else:
                                    mem[_16569 + (32 * _19161) + (32 * _22809) + _26457 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16569 + (32 * _19161) + (32 * _22809) + ceil32(_26457) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28761 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28761] == mem[_28761]
                            else:
                                _16379 = mem[128]
                                _16568 = mem[64]
                                mem[mem[64]] = 0xd492108400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[108 len 20]
                                mem[mem[64] + 68] = mem[128]
                                mem[mem[64] + 100] = mem[160]
                                if mem[192] >= 3:
                                    revert with 'NH{q', 33
                                mem[mem[64] + 132] = mem[192]
                                mem[mem[64] + 164] = mem[236 len 20]
                                mem[mem[64] + 196] = mem[268 len 20]
                                _18584 = mem[288]
                                mem[mem[64] + 228] = 352
                                mem[mem[64] + 388] = mem[mem[288]]
                                _18968 = mem[mem[288] + 32]
                                mem[mem[64] + 420] = 96
                                _19160 = mem[_18968]
                                mem[mem[64] + 484] = mem[_18968]
                                idx = 0
                                s = _18968 + 32
                                t = mem[64] + 516
                                while idx < _19160:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _22616 = mem[_18584 + 64]
                                mem[_16568 + 452] = (32 * _19160) + 128
                                _22808 = mem[_22616]
                                mem[_16568 + (32 * _19160) + 516] = mem[_22616]
                                idx = 0
                                s = _22616 + 32
                                t = _16568 + (32 * _19160) + 548
                                while idx < _22808:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if mem[320] >= 7:
                                    revert with 'NH{q', 33
                                mem[_16568 + 260] = mem[320]
                                mem[_16568 + 292] = mem[352]
                                mem[_16568 + 324] = mem[384]
                                _26264 = mem[416]
                                mem[_16568 + 356] = (32 * _19160) + (32 * _22808) + 512
                                _26456 = mem[_26264]
                                mem[_16568 + (32 * _19160) + (32 * _22808) + 548] = mem[_26264]
                                mem[_16568 + (32 * _19160) + (32 * _22808) + 580 len ceil32(_26456)] = mem[_26264 + 32 len ceil32(_26456)]
                                if ceil32(_26456) <= _26456:
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16379 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16568 + (32 * _19160) + (32 * _22808) + ceil32(_26456) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28568 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28568] == mem[_28568]
                                else:
                                    mem[_16568 + (32 * _19160) + (32 * _22808) + _26456 + 580] = 0
                                    require ext_code.size(coreAddress)
                                    call coreAddress.mem[mem[64] len 4] with:
                                       value _16379 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _16568 + (32 * _19160) + (32 * _22808) + ceil32(_26456) + -mem[64] + 576]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _28760 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_28760] == mem[_28760]
    Mask(88, 0, stor2.field_168) = 0
}



}

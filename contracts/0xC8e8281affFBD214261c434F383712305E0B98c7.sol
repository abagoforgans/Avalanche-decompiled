contract main {




// =====================  Runtime code  =====================


#
#  - fillOrder(uint256 arg1, uint256 arg2)
#  - sub_cc5ade8d(?)
#
address stor0;
mapping of uint8 stor1;
uint8 stor2;
address feeManagerAddress; offset 8
address coreAddress;

function paused() {
    return bool(stor2)
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
    if not stor2:
        require stor1[address(msg.sender)]
        stor2 = 1
        emit Paused()
    else:
        require stor1[address(msg.sender)]
        require stor1[address(msg.sender)]
        stor2 = 1
        emit Paused()
}

function unpause() {
    if stor2:
        require stor1[address(msg.sender)]
        stor2 = 0
        emit Unpaused()
    else:
        require stor1[address(msg.sender)]
        require stor1[address(msg.sender)]
        stor2 = 0
        emit Unpaused()
}

function sub_4301ff01(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0xd09ef24100000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(coreAddress)
    staticcall coreAddress.getOrder(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[96 len 4], Mask(224, 32, arg1) >> 32 >= 384
    if not bool(ceil32(return_data.size) + 480 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + 480
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] == mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127 len 1]
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    require mem[_4 + 128] == mem[_4 + 140 len 20]
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
    require _4 + mem[_4 + 288] + 127 < return_data.size + 96
    _13 = mem[_4 + mem[_4 + 288] + 96]
    if mem[_4 + mem[_4 + 288] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[_4 + mem[_4 + 288] + 96]) + 481 > test266151307() or floor32(mem[_4 + mem[_4 + 288] + 96]) + 385 < 384:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[_4 + mem[_4 + 288] + 96]) + 481
    mem[ceil32(return_data.size) + 480] = _13
    require _4 + _12 + (32 * _13) + 32 <= return_data.size
    idx = 0
    s = _4 + _12 + 128
    t = ceil32(return_data.size) + 512
    while idx < _13:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 288] = ceil32(return_data.size) + 480
    _71 = mem[_4 + 320]
    require mem[_4 + 320] <= test266151307()
    require _4 + mem[_4 + 320] + 127 < return_data.size + 96
    _72 = mem[_4 + mem[_4 + 320] + 96]
    if mem[_4 + mem[_4 + 320] + 96] > test266151307():
        revert with 'NH{q', 65
    _73 = mem[64]
    if mem[64] + floor32(mem[_4 + mem[_4 + 320] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[_4 + mem[_4 + 320] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[_4 + mem[_4 + 320] + 96]) + 1
    mem[_73] = mem[_4 + mem[_4 + 320] + 96]
    require _4 + _71 + (32 * _72) + 32 <= return_data.size
    idx = 0
    s = _4 + _71 + 128
    t = _73 + 32
    while idx < _72:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 320] = _73
    _132 = mem[_4 + 352]
    require mem[_4 + 352] <= test266151307()
    require _4 + mem[_4 + 352] + 127 < return_data.size + 96
    _133 = mem[_4 + mem[_4 + 352] + 96]
    if mem[_4 + mem[_4 + 352] + 96] > test266151307():
        revert with 'NH{q', 65
    _134 = mem[64]
    if mem[64] + ceil32(ceil32(mem[_4 + mem[_4 + 352] + 96])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_4 + mem[_4 + 352] + 96])) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + ceil32(ceil32(mem[_4 + mem[_4 + 352] + 96])) + 1
    mem[_134] = _133
    require _4 + _132 + _133 + 32 <= return_data.size
    mem[_134 + 32 len ceil32(_133)] = mem[_4 + _132 + 128 len ceil32(_133)]
    if ceil32(_133) <= _133:
        mem[ceil32(return_data.size) + 352] = _134
        require mem[_4 + 384] < 7
        mem[ceil32(return_data.size) + 384] = mem[_4 + 384]
        require mem[_4 + 416] == mem[_4 + 416]
        mem[ceil32(return_data.size) + 416] = mem[_4 + 416]
        require mem[_4 + 448] == mem[_4 + 448]
        mem[ceil32(return_data.size) + 448] = mem[_4 + 448]
        _196 = mem[ceil32(return_data.size) + 288]
        if mem[mem[ceil32(return_data.size) + 288]] < 2:
            revert with 0, 'INVALID_PATH'
        if mem[mem[ceil32(return_data.size) + 288]] < 1:
            revert with 'NH{q', 17
        if mem[_73] != mem[mem[ceil32(return_data.size) + 288]] - 1:
            revert with 0, 'INVALID_PATH'
        _241 = mem[_73]
        idx = 0
        s = mem[ceil32(return_data.size) + 160]
        while idx < _241:
            if idx >= mem[_73]:
                revert with 'NH{q', 50
            _245 = mem[(32 * idx) + _73 + 32]
            if idx >= mem[_196]:
                revert with 'NH{q', 50
            _250 = mem[(32 * idx) + _196 + 32]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[_196]:
                revert with 'NH{q', 50
            _257 = mem[(32 * idx + 1) + _196 + 32]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = address(_250)
            mem[mem[64] + 68] = address(_257)
            require ext_code.size(address(_245))
            staticcall address(_245).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                    gas gas_remaining wei
                   args s, address(_250), address(_257)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _263 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_263] == mem[_263]
            if idx == -1:
                revert with 'NH{q', 17
            _241 = mem[_73]
            idx = idx + 1
            s = mem[_263]
            continue 
        mem[mem[64]] = mem[ceil32(return_data.size) + 160] + (_265 * _241)
    else:
        mem[_134 + _133 + 32] = 0
        mem[ceil32(return_data.size) + 352] = _134
        require mem[_4 + 384] < 7
        mem[ceil32(return_data.size) + 384] = mem[_4 + 384]
        require mem[_4 + 416] == mem[_4 + 416]
        mem[ceil32(return_data.size) + 416] = mem[_4 + 416]
        require mem[_4 + 448] == mem[_4 + 448]
        mem[ceil32(return_data.size) + 448] = mem[_4 + 448]
        _200 = mem[ceil32(return_data.size) + 288]
        if mem[mem[ceil32(return_data.size) + 288]] < 2:
            revert with 0, 'INVALID_PATH'
        if mem[mem[ceil32(return_data.size) + 288]] < 1:
            revert with 'NH{q', 17
        if mem[_73] != mem[mem[ceil32(return_data.size) + 288]] - 1:
            revert with 0, 'INVALID_PATH'
        _242 = mem[_73]
        idx = 0
        s = mem[ceil32(return_data.size) + 160]
        while idx < _242:
            if idx >= mem[_73]:
                revert with 'NH{q', 50
            _247 = mem[(32 * idx) + _73 + 32]
            if idx >= mem[_200]:
                revert with 'NH{q', 50
            _252 = mem[(32 * idx) + _200 + 32]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[_200]:
                revert with 'NH{q', 50
            _259 = mem[(32 * idx + 1) + _200 + 32]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = address(_252)
            mem[mem[64] + 68] = address(_259)
            require ext_code.size(address(_247))
            staticcall address(_247).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                    gas gas_remaining wei
                   args s, address(_252), address(_259)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _264 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_264] == mem[_264]
            if idx == -1:
                revert with 'NH{q', 17
            _242 = mem[_73]
            idx = idx + 1
            s = mem[_264]
            continue 
        mem[mem[64]] = mem[ceil32(return_data.size) + 160] + (_266 * _242)
    return memory
      from mem[64]
       len 32
}



}

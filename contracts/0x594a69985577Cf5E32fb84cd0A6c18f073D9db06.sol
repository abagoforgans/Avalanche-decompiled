contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
address owner;
array of address stor1;

function owner() payable {
    return owner
}

function failed() payable {
    return bool(uint8(stor0.field_168))
}

function IS_TEST() payable {
    return bool(uint8(stor0.field_160))
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_fdab6c38(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = cd[4]
    call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[4]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = this.address
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ('cd', 36).length:
        revert with 0, 'no params'
    require ('cd', 36).length >= 96
    require ('cd', 36)[0] <= test266151307()
    require cd[36] + ('cd', 36)[0] + 67 < cd[36] + ('cd', 36).length + 36
    if cd[(cd[36] + ('cd', 36)[0] + 36)] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 97 > test266151307() or ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 97 < 96:
        revert with 'NH{q', 65
    mem[(2 * ceil32(return_data.size)) + 96] = cd[(cd[36] + ('cd', 36)[0] + 36)]
    require ('cd', 36)[0] + cd[(cd[36] + ('cd', 36)[0] + 36)] + 68 <= ('cd', 36).length + 36
    mem[(2 * ceil32(return_data.size)) + 128 len cd[(cd[36] + ('cd', 36)[0] + 36)]] = call.data[cd[36] + ('cd', 36)[0] + 68 len cd[(cd[36] + ('cd', 36)[0] + 36)]]
    mem[(2 * ceil32(return_data.size)) + cd[(cd[36] + ('cd', 36)[0] + 36)] + 128] = 0
    require ('cd', 36)[1] <= test266151307()
    require cd[36] + ('cd', 36)[1] + 67 < cd[36] + ('cd', 36).length + 36
    if cd[(cd[36] + ('cd', 36)[1] + 36)] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 98 > test266151307() or ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 98 < 97:
        revert with 'NH{q', 65
    mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 97] = cd[(cd[36] + ('cd', 36)[1] + 36)]
    require ('cd', 36)[1] + cd[(cd[36] + ('cd', 36)[1] + 36)] + 68 <= ('cd', 36).length + 36
    mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 129 len cd[(cd[36] + ('cd', 36)[1] + 36)]] = call.data[cd[36] + ('cd', 36)[1] + 68 len cd[(cd[36] + ('cd', 36)[1] + 36)]]
    mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + cd[(cd[36] + ('cd', 36)[1] + 36)] + 129] = 0
    require ('cd', 36)[2] <= test266151307()
    require cd[36] + ('cd', 36)[2] + 67 < cd[36] + ('cd', 36).length + 36
    if cd[(cd[36] + ('cd', 36)[2] + 36)] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[2] + 36)])) + 99 > test266151307() or ceil32(ceil32(cd[(cd[36] + ('cd', 36)[2] + 36)])) + 99 < 98:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[2] + 36)])) + 99
    mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 98] = cd[(cd[36] + ('cd', 36)[2] + 36)]
    require ('cd', 36)[2] + cd[(cd[36] + ('cd', 36)[2] + 36)] + 68 <= ('cd', 36).length + 36
    mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 130 len cd[(cd[36] + ('cd', 36)[2] + 36)]] = call.data[cd[36] + ('cd', 36)[2] + 68 len cd[(cd[36] + ('cd', 36)[2] + 36)]]
    mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + cd[(cd[36] + ('cd', 36)[2] + 36)] + 130] = 0
    require cd[(cd[36] + ('cd', 36)[0] + 36)] >= 128
    _17 = mem[(2 * ceil32(return_data.size)) + 128]
    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 159 < (2 * ceil32(return_data.size)) + cd[(cd[36] + ('cd', 36)[0] + 36)] + 128
    _18 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 128]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 128] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[2] + 36)])) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 128]) + 100 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 128]) + 100 < 99:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[2] + 36)])) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 128]) + 100
    mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[2] + 36)])) + 99] = _18
    require _17 + (32 * _18) + 64 <= cd[(cd[36] + ('cd', 36)[0] + 36)] + 32
    idx = (2 * ceil32(return_data.size)) + _17 + 160
    s = (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[2] + 36)])) + 131
    while idx < (2 * ceil32(return_data.size)) + _17 + (32 * _18) + 160:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    _29 = mem[(2 * ceil32(return_data.size)) + 160]
    require mem[(2 * ceil32(return_data.size)) + 160] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160] + 159 < (2 * ceil32(return_data.size)) + cd[(cd[36] + ('cd', 36)[0] + 36)] + 128
    _30 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160] + 128]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160] + 128] > test266151307():
        revert with 'NH{q', 65
    _31 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160] + 128]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160] + 128]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160] + 128]) + 1
    mem[_31] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160] + 128]
    require _29 + (32 * _30) + 64 <= cd[(cd[36] + ('cd', 36)[0] + 36)] + 32
    idx = (2 * ceil32(return_data.size)) + _29 + 160
    s = _31 + 32
    while idx < (2 * ceil32(return_data.size)) + _29 + (32 * _30) + 160:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    _112 = mem[(2 * ceil32(return_data.size)) + 192]
    require mem[(2 * ceil32(return_data.size)) + 192] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192] + 159 < (2 * ceil32(return_data.size)) + cd[(cd[36] + ('cd', 36)[0] + 36)] + 128
    _113 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192] + 128]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192] + 128] > test266151307():
        revert with 'NH{q', 65
    _114 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192] + 128]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192] + 128]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192] + 128]) + 1
    mem[_114] = _113
    require _112 + (32 * _113) + 64 <= cd[(cd[36] + ('cd', 36)[0] + 36)] + 32
    idx = (2 * ceil32(return_data.size)) + _112 + 160
    s = _114 + 32
    while idx < (2 * ceil32(return_data.size)) + _112 + (32 * _113) + 160:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    _207 = mem[(2 * ceil32(return_data.size)) + 224]
    require mem[(2 * ceil32(return_data.size)) + 224] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 159 < (2 * ceil32(return_data.size)) + cd[(cd[36] + ('cd', 36)[0] + 36)] + 128
    _208 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 128]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 128] > test266151307():
        revert with 'NH{q', 65
    _209 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 128]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 128]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 128]) + 1
    mem[_209] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 128]
    require _207 + (32 * _208) + 64 <= cd[(cd[36] + ('cd', 36)[0] + 36)] + 32
    idx = (2 * ceil32(return_data.size)) + _207 + 160
    s = _209 + 32
    while idx < (2 * ceil32(return_data.size)) + _207 + (32 * _208) + 160:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[2] + 36)])) + 99] != mem[_31]:
        revert with 0, 'invalid amounts'
    _430 = mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[2] + 36)])) + 99]
    idx = 0
    while idx < _430:
        if idx >= mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[2] + 36)])) + 99]:
            revert with 'NH{q', 50
        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[2] + 36)])) + 131] >= stor1.length:
            revert with 0, 'invalid market'
        if idx >= mem[_31]:
            revert with 'NH{q', 50
        if mem[(32 * idx) + _31 + 32] <= 0:
            revert with 0, 'invalid amount'
        if idx >= mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[2] + 36)])) + 99]:
            revert with 'NH{q', 50
        _440 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[2] + 36)])) + 131]
        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[2] + 36)])) + 131] >= stor1.length:
            revert with 'NH{q', 50
        mem[0] = 1
        if idx >= mem[_31]:
            revert with 'NH{q', 50
        _444 = mem[(32 * idx) + _31 + 32]
        if idx >= mem[_114]:
            revert with 'NH{q', 50
        _446 = mem[(32 * idx) + _114 + 32]
        if idx >= mem[_209]:
            revert with 'NH{q', 50
        _448 = mem[(32 * idx) + _209 + 32]
        mem[mem[64]] = 0x2acc94b00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _444
        mem[mem[64] + 36] = _446
        mem[mem[64] + 68] = _448
        require ext_code.size(stor1[_440])
        call stor1[_440].mint(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args _444, _446, _448
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        _430 = mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[2] + 36)])) + 99]
        idx = idx + 1
        continue 
    _433 = mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 97]
    require mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 97] >= 128
    _437 = mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 129]
    require mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 129] <= test266151307()
    require (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 129] + 160 < (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 97] + 129
    _443 = mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 129] + 129]
    if mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 129] + 129] > test266151307():
        revert with 'NH{q', 65
    _452 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 129] + 129]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 129] + 129]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 129] + 129]) + 1
    mem[_452] = _443
    require _437 + (32 * _443) + 64 <= _433 + 32
    idx = (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + _437 + 161
    s = _452 + 32
    while idx < (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + _437 + (32 * _443) + 161:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    _548 = mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 161]
    require mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 161] <= test266151307()
    require (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 161] + 160 < (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + _433 + 129
    _549 = mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 161] + 129]
    if mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 161] + 129] > test266151307():
        revert with 'NH{q', 65
    _550 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 161] + 129]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 161] + 129]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 161] + 129]) + 1
    mem[_550] = _549
    require _548 + (32 * _549) + 64 <= _433 + 32
    idx = (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + _548 + 161
    s = _550 + 32
    while idx < (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + _548 + (32 * _549) + 161:
        _648 = mem[idx]
        require mem[idx] <= test266151307()
        require (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + _548 + mem[idx] + 192 < (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + _433 + 129
        _650 = mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + _548 + mem[idx] + 161]
        if mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + _548 + mem[idx] + 161] > test266151307():
            revert with 'NH{q', 65
        _653 = mem[64]
        if mem[64] + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + _548 + mem[idx] + 161])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + _548 + mem[idx] + 161])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + _548 + mem[idx] + 161])) + 1
        mem[_653] = _650
        require _548 + _648 + _650 + 96 <= _433 + 32
        t = 0
        while t < _650:
            mem[_653 + t + 32] = mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + _548 + _648 + t + 193]
            t = t + 32
            continue 
        if ceil32(_650) > _650:
            mem[_653 + _650 + 32] = 0
        mem[s] = _653
        idx = idx + 32
        s = s + 32
        continue 
    _649 = mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 193]
    require mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 193] <= test266151307()
    require (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 193] + 160 < (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + _433 + 129
    _651 = mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 193] + 129]
    if mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 193] + 129] > test266151307():
        revert with 'NH{q', 65
    _652 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 193] + 129]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 193] + 129]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 193] + 129]) + 1
    mem[_652] = _651
    require _649 + (32 * _651) + 64 <= _433 + 32
    idx = (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + _649 + 161
    s = _652 + 32
    while idx < (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + _649 + (32 * _651) + 161:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    _751 = mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 225]
    require mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 225] <= test266151307()
    require (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 225] + 160 < (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + _433 + 129
    _752 = mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 225] + 129]
    if mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 225] + 129] > test266151307():
        revert with 'NH{q', 65
    _753 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 225] + 129]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 225] + 129]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + 225] + 129]) + 1
    mem[_753] = _752
    require _751 + (32 * _752) + 64 <= _433 + 32
    idx = (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + _751 + 161
    s = _753 + 32
    while idx < (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + _751 + (32 * _752) + 161:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    _962 = mem[_452]
    idx = 0
    while idx < _962:
        if idx >= mem[_652]:
            revert with 'NH{q', 50
        _964 = mem[(32 * idx) + _652 + 32]
        if idx >= mem[_452]:
            revert with 'NH{q', 50
        if idx >= mem[_753]:
            revert with 'NH{q', 50
        _969 = mem[(32 * idx) + _753 + 32]
        mem[mem[64] + 4] = mem[(32 * idx) + _452 + 44 len 20]
        mem[mem[64] + 36] = _969
        call address(_964).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _969
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _975 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_975] == bool(mem[_975])
        if idx >= mem[_452]:
            revert with 'NH{q', 50
        _980 = mem[(32 * idx) + _452 + 32]
        if idx >= mem[_550]:
            revert with 'NH{q', 50
        _983 = mem[(32 * idx) + _550 + 32]
        _984 = mem[64]
        _985 = mem[mem[(32 * idx) + _550 + 32]]
        s = 0
        while s < _985:
            mem[_984 + s] = mem[_983 + s + 32]
            _962 = mem[_452]
            s = s + 32
            continue 
        if ceil32(_985) <= _985:
            call address(_980).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _984 + _985 + -mem[64] - 4]
            if return_data.size:
                _1076 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1076] = return_data.size
                mem[_1076 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_984 + _985] = 0
            call address(_980).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _984 + _985 + -mem[64] - 4]
            if return_data.size:
                _1078 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1078] = return_data.size
                mem[_1078 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'call failed'
        if idx == -1:
            revert with 'NH{q', 17
        _962 = mem[_452]
        idx = idx + 1
        continue 
    _966 = mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 98]
    require mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 98] >= 96
    _971 = mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 130]
    require mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 130] <= test266151307()
    require (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 130] + 161 < (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 98] + 130
    _972 = mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 130] + 130]
    if mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 130] + 130] > test266151307():
        revert with 'NH{q', 65
    _973 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 130] + 130]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 130] + 130]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 130] + 130]) + 1
    mem[_973] = _972
    require _971 + (32 * _972) + 64 <= _966 + 32
    idx = (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + _971 + 162
    s = _973 + 32
    while idx < (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + _971 + (32 * _972) + 162:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    _1073 = mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 162]
    require mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 162] <= test266151307()
    require (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 162] + 161 < (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + _966 + 130
    _1075 = mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 162] + 130]
    if mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 162] + 130] > test266151307():
        revert with 'NH{q', 65
    _1083 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 162] + 130]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 162] + 130]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 162] + 130]) + 1
    mem[_1083] = _1075
    require _1073 + (32 * _1075) + 64 <= _966 + 32
    idx = (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + _1073 + 162
    s = _1083 + 32
    while idx < (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + _1073 + (32 * _1075) + 162:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    _1160 = mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 194]
    require mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 194] <= test266151307()
    require (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 194] + 161 < (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + _966 + 130
    _1161 = mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 194] + 130]
    if mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 194] + 130] > test266151307():
        revert with 'NH{q', 65
    _1162 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 194] + 130]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 194] + 130]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + 194] + 130]) + 1
    mem[_1162] = _1161
    require _1160 + (32 * _1161) + 64 <= _966 + 32
    idx = (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + _1160 + 162
    s = _1162 + 32
    while idx < (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 36)])) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[1] + 36)])) + _1160 + (32 * _1161) + 162:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if _1161 != mem[_1083]:
        revert with 0, 'invalid strikes'
    _1297 = mem[_973]
    idx = 0
    while idx < _1297:
        if idx >= mem[_973]:
            revert with 'NH{q', 50
        if mem[(32 * idx) + _973 + 32] >= stor1.length:
            revert with 0, 'invalid market'
        if idx >= mem[_973]:
            revert with 'NH{q', 50
        _1303 = mem[(32 * idx) + _973 + 32]
        if mem[(32 * idx) + _973 + 32] >= stor1.length:
            revert with 'NH{q', 50
        mem[0] = 1
        if idx >= mem[_1162]:
            revert with 'NH{q', 50
        _1306 = mem[(32 * idx) + _1162 + 32]
        mem[mem[64] + 4] = mem[(32 * idx) + _1162 + 32]
        staticcall stor1[_1303].0xdd903558 with:
                gas gas_remaining wei
               args _1306
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1312 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1314 = mem[_1312]
        require mem[_1312] == mem[_1312 + 12 len 20]
        if idx >= mem[_1083]:
            revert with 'NH{q', 50
        _1318 = mem[(32 * idx) + _1083 + 32]
        mem[mem[64] + 4] = mem[(32 * idx) + _1083 + 32]
        staticcall stor1[_1303].0x587f2ff2 with:
                gas gas_remaining wei
               args _1318
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1324 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1326 = mem[_1324]
        require mem[_1324] == mem[_1324 + 12 len 20]
        mem[mem[64] + 4] = this.address
        staticcall address(_1326).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1331 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1333 = mem[_1331]
        require mem[_1331] == mem[_1331]
        mem[mem[64] + 4] = this.address
        staticcall address(_1314).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1337 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1337] == mem[_1337]
        mem[mem[64] + 4] = this.address
        if mem[_1337] > _1333:
            staticcall address(_1326).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1343 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1345 = mem[_1343]
            require mem[_1343] == mem[_1343]
            if idx >= mem[_1083]:
                revert with 'NH{q', 50
            _1349 = mem[(32 * idx) + _1083 + 32]
            if idx >= mem[_1162]:
                revert with 'NH{q', 50
            _1353 = mem[(32 * idx) + _1162 + 32]
            mem[mem[64]] = 0x5a1002800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1345
            mem[mem[64] + 36] = _1349
            mem[mem[64] + 68] = _1353
            require ext_code.size(stor1[_1303])
            call stor1[_1303].burn(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args _1345, _1349, _1353
        else:
            staticcall address(_1314).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1344 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1346 = mem[_1344]
            require mem[_1344] == mem[_1344]
            if idx >= mem[_1083]:
                revert with 'NH{q', 50
            _1351 = mem[(32 * idx) + _1083 + 32]
            if idx >= mem[_1162]:
                revert with 'NH{q', 50
            _1355 = mem[(32 * idx) + _1162 + 32]
            mem[mem[64]] = 0x5a1002800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1346
            mem[mem[64] + 36] = _1351
            mem[mem[64] + 68] = _1355
            require ext_code.size(stor1[_1303])
            call stor1[_1303].burn(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args _1346, _1351, _1355
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        _1297 = mem[_973]
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = this.address
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1310 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1310] == mem[_1310]
    if mem[_1310] <= ext_call.return_data[0]:
        revert with 0, 'not profitable.'
    mem[mem[64] + 4] = this.address
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1322 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1325 = mem[_1322]
    require mem[_1322] == mem[_1322]
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = _1325
    call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xa9059cbb with:
         gas gas_remaining wei
        args address(this.address), _1325
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1332 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1332] == bool(mem[_1332])
}



}

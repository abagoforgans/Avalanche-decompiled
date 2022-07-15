contract main {




// =====================  Runtime code  =====================


#
#  - sub_2fccb87b(?)
#  - sub_37ba7bd4(?)
#  - sub_429bf2a7(?)
#  - sub_6431ab98(?)
#  - sub_c0f841e2(?)
#  - sub_c13f53ab(?)
#
address owner;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
uint256 sub_e833dce5;
mapping of uint256 sub_6aba019b;
mapping of address sub_6595c945;
mapping of uint256 sub_8d124c58;
mapping of struct stor20;
mapping of struct stor21;
mapping of address sub_72c1f42e;
mapping of uint256 sub_ad453ea8;
uint256 sub_d118ea9b;
mapping of uint256 sub_e49f46e3;
mapping of struct stor26;
mapping of struct stor27;
mapping of address sub_236e3509;
mapping of uint256 sub_7c24420c;
mapping of uint256 sub_7123e6d9;
mapping of struct stor31;
mapping of address sub_d6e05838;
address stor37;
mapping of uint8 stor38;
mapping of uint8 stor39;
mapping of uint256 sub_b0444b61;
mapping of uint8 stor45;
mapping of uint8 stor99;

function sub_236e3509(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_236e3509[arg1]
}

function sub_6595c945(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_6595c945[arg1]
}

function sub_6aba019b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_6aba019b[arg1]
}

function sub_6af8670c(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor39[arg1])
}

function sub_7123e6d9(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_7123e6d9[arg1]
}

function sub_72c1f42e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_72c1f42e[arg1]
}

function sub_7c24420c(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_7c24420c[arg1]
}

function sub_8d124c58(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_8d124c58[arg1]
}

function owner() {
    return owner
}

function sub_ad453ea8(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    return sub_ad453ea8[arg1][arg2][arg3]
}

function sub_b0444b61(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    return sub_b0444b61[address(arg2)][arg1]
}

function sub_be33ec1b(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor38[arg1][arg2])
}

function sub_d118ea9b(?) {
    return sub_d118ea9b
}

function sub_d6e05838(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_d6e05838[arg1]
}

function sub_e49f46e3(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_e49f46e3[arg1]
}

function sub_e833dce5(?) {
    return sub_e833dce5
}

function _fallback() payable {
  stop
}

function sub_a72d068a(?) {
    if owner:
        revert with 0, 'already set'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_a8f98593(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = address(arg1)
}

function sub_a2e07d57(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor39[arg1] = uint8(bool(arg2))
}

function sub_c91647c7(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor26[arg1].field_1792) = arg2
}

function sub_e3dae79e(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor26[arg1].field_1280) = arg2
}

function sub_01b66002(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint256(stor26[arg1].field_2560) <= 0:
        revert with 0, 'Counter: decrement overflow'
    uint256(stor26[arg1].field_2560)--
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function init() {
    stor8 = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    stor7 = 0xc7198437980c041c805a1edcba50c1ce5db95118
    stor11 = 0x9c427ea9ce5fd3101a273815ff8530f2ac75db37
    stor9 = 0x7c4bd5a216db48daac6d1427d638df290f7cce94
    stor10 = 0x23f1e33f614345caac21c24d05dfbfbda0b0aaf6
    stor37 = 0xe28984e1ee8d431346d32bec9ec800efb643eef4
    owner = 0xcfd872e3e8fb719ebece7e872ed5dc287bb1e329
    emit OwnershipTransferred(owner, 0xcfd872e3e8fb719ebece7e872ed5dc287bb1e329);
}

function stringToBytes32(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not arg1.length:
        return 0
    mem[ceil32(ceil32(arg1.length)) + 97] = mem[128]
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function sub_91332242(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint256(stor27[arg1].field_0):
        mem[128] = uint256(stor27[arg1].field_0)
        idx = 128
        s = 0
        while (32 * uint256(stor27[arg1].field_0)) + 96 > idx:
            mem[idx + 32] = uint256(stor27[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=uint256(stor27[arg1].field_0), data=mem[128 len 32 * uint256(stor27[arg1].field_0)])
    mem[(32 * uint256(stor27[arg1].field_0)) + 128] = 32
    mem[(32 * uint256(stor27[arg1].field_0)) + 160] = uint256(stor27[arg1].field_0)
    mem[(32 * uint256(stor27[arg1].field_0)) + 192 len 32 * uint256(stor27[arg1].field_0)] = mem[128 len 32 * uint256(stor27[arg1].field_0)]
    return memory
      from (32 * uint256(stor27[arg1].field_0)) + 128
       len (96 * uint256(stor27[arg1].field_0)) + 64
}

function sub_d26e555a(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if sub_d6e05838[arg1] != msg.sender:
        revert with 0, 'Box not owned'
    if stor31[arg1].field_1024:
        revert with 0, 'Box already opened'
    require ext_code.size(stor10)
    call stor10.0xc655acc0 with:
         gas gas_remaining wei
        args 0, 0, msg.sender, uint256(stor31[arg1].field_768), sub_236e3509[uint256(stor21[arg1].field_512)], sub_7c24420c[uint256(stor21[arg1].field_512)], uint256(stor21[arg1].field_512)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    stor31[arg1].field_1024 = 1
    emit 0x9989d50e: uint256(stor31[arg1].field_512), ext_call.return_data[0], ext_call.return_data[32], 0, uint256(stor31[arg1].field_768), arg1
    emit 0xbe15e346: arg1
}

function sub_04ebe841(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = cd[36]
        mem[32] = sha3(mem[(32 * idx) + 128], 38)
        stor38[mem[(32 * idx) + 128]][cd[36]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_ab6dc51d(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = cd[36]
        mem[32] = sha3(mem[(32 * idx) + 128], 38)
        stor38[mem[(32 * idx) + 128]][cd[36]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_588fcf4f(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = cd[36]
        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 45)
        stor45[mem[(32 * idx) + 140 len 20]][cd[36]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_64d81bb3(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = cd[36]
        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 45)
        stor45[mem[(32 * idx) + 140 len 20]][cd[36]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_c8248518(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == bool(arg2)
    require arg3 == address(arg3)
    if not arg2:
        if sub_d6e05838[arg1] != msg.sender:
            revert with 0, 'Box not owned'
        if stor31[arg1].field_1024:
            revert with 0, 'Box already opened'
        require ext_code.size(stor10)
        call stor10.0xc655acc0 with:
             gas gas_remaining wei
            args 0, 0, msg.sender, uint256(stor31[arg1].field_768), sub_236e3509[uint256(stor21[arg1].field_512)], sub_7c24420c[uint256(stor21[arg1].field_512)], uint256(stor21[arg1].field_512)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        stor31[arg1].field_1024 = 1
        emit 0x9989d50e: uint256(stor31[arg1].field_512), ext_call.return_data[0], ext_call.return_data[32], 0, uint256(stor31[arg1].field_768), arg1
        emit 0xbe15e346: arg1
}

function calculatePrice(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(stor37)
    staticcall stor37.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if not arg3:
        if arg2 == 1:
            if ext_call.return_data[50 len 14] and 10^12 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if arg1 and 10^12 * ext_call.return_data[50 len 14] > -1 / arg1:
                revert with 'NH{q', 17
            if not ext_call.return_data[18 len 14]:
                revert with 'NH{q', 18
            return (10^12 * arg1 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    if arg3 != 1:
        return arg1
    if arg2:
        return arg1
    if arg1 and ext_call.return_data[18 len 14] > -1 / arg1:
        revert with 'NH{q', 17
    if ext_call.return_data[50 len 14] and 10^12 > -1 / ext_call.return_data[50 len 14]:
        revert with 'NH{q', 17
    if not 10^12 * ext_call.return_data[50 len 14]:
        revert with 'NH{q', 18
    return (arg1 * ext_call.return_data[18 len 14] / 10^12 * ext_call.return_data[50 len 14])
}

function sub_101589ff(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _17 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1
        mem[_17] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_17 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_17 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _17
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _32 = mem[96]
    idx = 0
    while idx < _32:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _34 = mem[(32 * idx) + 128]
        _35 = mem[64]
        _36 = mem[mem[(32 * idx) + 128]]
        s = 0
        while s < _36:
            mem[_35 + s] = mem[_34 + s + 32]
            _32 = mem[96]
            s = s + 32
            continue 
        mem[_35 + _36] = 46
        if ceil32(_36) <= _36:
            _46 = sha3(mem[mem[64] len _35 + _36 + -mem[64] + 32])
            mem[0] = cd[36]
            mem[32] = _46
            stor[_46][cd[36]] = 1
        else:
            _49 = sha3(mem[mem[64] len _35 + _36 + -mem[64] + 32])
            mem[0] = cd[36]
            mem[32] = _49
            stor[_49][cd[36]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        _32 = mem[96]
        idx = idx + 1
        continue 
}

function sub_e13641eb(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _17 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1
        mem[_17] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_17 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_17 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _17
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _32 = mem[96]
    idx = 0
    while idx < _32:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _34 = mem[(32 * idx) + 128]
        _35 = mem[64]
        _36 = mem[mem[(32 * idx) + 128]]
        s = 0
        while s < _36:
            mem[_35 + s] = mem[_34 + s + 32]
            _32 = mem[96]
            s = s + 32
            continue 
        mem[_35 + _36] = 46
        if ceil32(_36) <= _36:
            _46 = sha3(mem[mem[64] len _35 + _36 + -mem[64] + 32])
            mem[0] = cd[36]
            mem[32] = _46
            stor[_46][cd[36]] = 0
        else:
            _49 = sha3(mem[mem[64] len _35 + _36 + -mem[64] + 32])
            mem[0] = cd[36]
            mem[32] = _49
            stor[_49][cd[36]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        _32 = mem[96]
        idx = idx + 1
        continue 
}

function sub_261a423b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor20[arg1].field_0):
        if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor20[arg1].field_0):
            if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor20[arg1].field_1):
                if 31 < uint255(stor20[arg1].field_1):
                    mem[128] = uint256(stor20[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor20[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor20[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor20[arg1].field_1)), data=mem[128 len ceil32(uint255(stor20[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
        else:
            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor20[arg1].field_1 % 128:
                if 31 < stor20[arg1].field_1 % 128:
                    mem[128] = uint256(stor20[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor20[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor20[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor20[arg1].field_1)), data=mem[128 len ceil32(uint255(stor20[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
        mem[ceil32(uint255(stor20[arg1].field_1)) + 192 len ceil32(uint255(stor20[arg1].field_1))] = mem[128 len ceil32(uint255(stor20[arg1].field_1))]
        if ceil32(uint255(stor20[arg1].field_1)) > uint255(stor20[arg1].field_1):
            mem[ceil32(uint255(stor20[arg1].field_1)) + uint255(stor20[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor20[arg1].field_1)), data=mem[128 len ceil32(uint255(stor20[arg1].field_1))], mem[(2 * ceil32(uint255(stor20[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor20[arg1].field_1))]), 
    if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor20[arg1].field_0):
        if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor20[arg1].field_1):
            if 31 < uint255(stor20[arg1].field_1):
                mem[128] = uint256(stor20[arg1].field_0)
                idx = 128
                s = 0
                while uint255(stor20[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor20[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20[arg1].field_0 % 128, data=mem[128 len ceil32(stor20[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
    else:
        if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor20[arg1].field_1 % 128:
            if 31 < stor20[arg1].field_1 % 128:
                mem[128] = uint256(stor20[arg1].field_0)
                idx = 128
                s = 0
                while stor20[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor20[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20[arg1].field_0 % 128, data=mem[128 len ceil32(stor20[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
    mem[ceil32(stor20[arg1].field_1 % 128) + 192 len ceil32(stor20[arg1].field_1 % 128)] = mem[128 len ceil32(stor20[arg1].field_1 % 128)]
    if ceil32(stor20[arg1].field_1 % 128) > stor20[arg1].field_1 % 128:
        mem[ceil32(stor20[arg1].field_1 % 128) + stor20[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor20[arg1].field_0 % 128, data=mem[128 len ceil32(stor20[arg1].field_1 % 128)], mem[(2 * ceil32(stor20[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor20[arg1].field_1 % 128)]), 
}

function sub_43786515(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor21[arg1].field_0):
        if bool(stor21[arg1].field_0) == uint255(stor21[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor21[arg1].field_0):
            if bool(stor21[arg1].field_0) == uint255(stor21[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor21[arg1].field_1):
                if 31 >= uint255(stor21[arg1].field_1):
                    mem[128] = 256 * Mask(248, 0, stor21[arg1].field_8)
                else:
                    mem[128] = uint256(stor21[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor21[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor21[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor21[arg1].field_0) == stor21[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor21[arg1].field_1 % 128:
                if 31 >= stor21[arg1].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor21[arg1].field_8)
                else:
                    mem[128] = uint256(stor21[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor21[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor21[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        if bool(stor21[arg1].field_256):
            if bool(stor21[arg1].field_256) == uint255(stor21[arg1].field_257) < 32:
                revert with 'NH{q', 34
            if bool(stor21[arg1].field_256):
                if bool(stor21[arg1].field_256) == uint255(stor21[arg1].field_257) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor21[arg1].field_257):
                    if ceil32(uint255(stor21[arg1].field_1)) > uint255(stor21[arg1].field_1):
                        mem[ceil32(uint255(stor21[arg1].field_1)) + ceil32(uint255(stor21[arg1].field_257)) + uint255(stor21[arg1].field_1) + 352] = 0
                    mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(uint255(stor21[arg1].field_257)) + 352] = uint255(stor21[arg1].field_257)
                    mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(uint255(stor21[arg1].field_257)) + 384 len ceil32(uint255(stor21[arg1].field_257))] = mem[ceil32(uint255(stor21[arg1].field_1)) + 160 len ceil32(uint255(stor21[arg1].field_257))]
                    if ceil32(uint255(stor21[arg1].field_257)) > uint255(stor21[arg1].field_257):
                        mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(uint255(stor21[arg1].field_257)) + uint255(stor21[arg1].field_257) + 384] = 0
                else:
                    if 31 >= uint255(stor21[arg1].field_257):
                        mem[ceil32(uint255(stor21[arg1].field_1)) + 160] = 256 * Mask(248, 0, stor21[arg1].field_264)
                    else:
                        mem[ceil32(uint255(stor21[arg1].field_1)) + 160] = uint256(stor21[arg1][1].field_0)
                        idx = ceil32(uint255(stor21[arg1].field_1)) + 160
                        s = 0
                        while ceil32(uint255(stor21[arg1].field_1)) + uint255(stor21[arg1].field_257) + 128 > idx:
                            mem[idx + 32] = uint256(stor21[arg1][s + 1].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor21[arg1].field_1)) > uint255(stor21[arg1].field_1):
                        mem[ceil32(uint255(stor21[arg1].field_1)) + ceil32(uint255(stor21[arg1].field_257)) + uint255(stor21[arg1].field_1) + 352] = 0
                    mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(uint255(stor21[arg1].field_257)) + 352] = uint255(stor21[arg1].field_257)
                    mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(uint255(stor21[arg1].field_257)) + 384 len ceil32(uint255(stor21[arg1].field_257))] = mem[ceil32(uint255(stor21[arg1].field_1)) + 160 len ceil32(uint255(stor21[arg1].field_257))]
                    if ceil32(uint255(stor21[arg1].field_257)) > uint255(stor21[arg1].field_257):
                        mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(uint255(stor21[arg1].field_257)) + uint255(stor21[arg1].field_257) + 384] = 0
            else:
                if bool(stor21[arg1].field_256) == stor21[arg1].field_257 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor21[arg1].field_257 % 128:
                    if ceil32(uint255(stor21[arg1].field_1)) > uint255(stor21[arg1].field_1):
                        mem[ceil32(uint255(stor21[arg1].field_1)) + ceil32(uint255(stor21[arg1].field_257)) + uint255(stor21[arg1].field_1) + 352] = 0
                    mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(uint255(stor21[arg1].field_257)) + 352] = uint255(stor21[arg1].field_257)
                    mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(uint255(stor21[arg1].field_257)) + 384 len ceil32(uint255(stor21[arg1].field_257))] = mem[ceil32(uint255(stor21[arg1].field_1)) + 160 len ceil32(uint255(stor21[arg1].field_257))]
                    if ceil32(uint255(stor21[arg1].field_257)) > uint255(stor21[arg1].field_257):
                        mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(uint255(stor21[arg1].field_257)) + uint255(stor21[arg1].field_257) + 384] = 0
                else:
                    if 31 >= stor21[arg1].field_257 % 128:
                        mem[ceil32(uint255(stor21[arg1].field_1)) + 160] = 256 * Mask(248, 0, stor21[arg1].field_264)
                    else:
                        mem[ceil32(uint255(stor21[arg1].field_1)) + 160] = uint256(stor21[arg1][1].field_0)
                        idx = ceil32(uint255(stor21[arg1].field_1)) + 160
                        s = 0
                        while ceil32(uint255(stor21[arg1].field_1)) + stor21[arg1].field_257 % 128 + 128 > idx:
                            mem[idx + 32] = uint256(stor21[arg1][s + 1].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor21[arg1].field_1)) > uint255(stor21[arg1].field_1):
                        mem[ceil32(uint255(stor21[arg1].field_1)) + ceil32(uint255(stor21[arg1].field_257)) + uint255(stor21[arg1].field_1) + 352] = 0
                    mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(uint255(stor21[arg1].field_257)) + 352] = uint255(stor21[arg1].field_257)
                    mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(uint255(stor21[arg1].field_257)) + 384 len ceil32(uint255(stor21[arg1].field_257))] = mem[ceil32(uint255(stor21[arg1].field_1)) + 160 len ceil32(uint255(stor21[arg1].field_257))]
                    if ceil32(uint255(stor21[arg1].field_257)) > uint255(stor21[arg1].field_257):
                        mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(uint255(stor21[arg1].field_257)) + uint255(stor21[arg1].field_257) + 384] = 0
            return Array(len=2 * Mask(256, -1, uint255(stor21[arg1].field_1)), data=mem[128 len ceil32(uint255(stor21[arg1].field_1))], 2 * Mask(256, -1, uint255(stor21[arg1].field_257)), mem[ceil32(uint255(stor21[arg1].field_1)) + 160 len ceil32(uint255(stor21[arg1].field_257))]), 
                   ceil32(uint255(stor21[arg1].field_1)) + 192,
                   uint256(stor21[arg1].field_512),
                   uint256(stor21[arg1].field_768),
                   bool(stor21[arg1].field_1024)
        if bool(stor21[arg1].field_256) == stor21[arg1].field_257 % 128 < 32:
            revert with 'NH{q', 34
        if bool(stor21[arg1].field_256):
            if bool(stor21[arg1].field_256) == uint255(stor21[arg1].field_257) < 32:
                revert with 'NH{q', 34
            if not uint255(stor21[arg1].field_257):
                if ceil32(uint255(stor21[arg1].field_1)) > uint255(stor21[arg1].field_1):
                    mem[ceil32(uint255(stor21[arg1].field_1)) + ceil32(stor21[arg1].field_257 % 128) + uint255(stor21[arg1].field_1) + 352] = 0
                mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(stor21[arg1].field_257 % 128) + 352] = stor21[arg1].field_257 % 128
                mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(stor21[arg1].field_257 % 128) + 384 len ceil32(stor21[arg1].field_257 % 128)] = mem[ceil32(uint255(stor21[arg1].field_1)) + 160 len ceil32(stor21[arg1].field_257 % 128)]
                if ceil32(stor21[arg1].field_257 % 128) > stor21[arg1].field_257 % 128:
                    mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(stor21[arg1].field_257 % 128) + stor21[arg1].field_257 % 128 + 384] = 0
            else:
                if 31 >= uint255(stor21[arg1].field_257):
                    mem[ceil32(uint255(stor21[arg1].field_1)) + 160] = 256 * Mask(248, 0, stor21[arg1].field_264)
                else:
                    mem[ceil32(uint255(stor21[arg1].field_1)) + 160] = uint256(stor21[arg1][1].field_0)
                    idx = ceil32(uint255(stor21[arg1].field_1)) + 160
                    s = 0
                    while ceil32(uint255(stor21[arg1].field_1)) + uint255(stor21[arg1].field_257) + 128 > idx:
                        mem[idx + 32] = uint256(stor21[arg1][s + 1].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor21[arg1].field_1)) > uint255(stor21[arg1].field_1):
                    mem[ceil32(uint255(stor21[arg1].field_1)) + ceil32(stor21[arg1].field_257 % 128) + uint255(stor21[arg1].field_1) + 352] = 0
                mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(stor21[arg1].field_257 % 128) + 352] = stor21[arg1].field_257 % 128
                mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(stor21[arg1].field_257 % 128) + 384 len ceil32(stor21[arg1].field_257 % 128)] = mem[ceil32(uint255(stor21[arg1].field_1)) + 160 len ceil32(stor21[arg1].field_257 % 128)]
                if ceil32(stor21[arg1].field_257 % 128) > stor21[arg1].field_257 % 128:
                    mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(stor21[arg1].field_257 % 128) + stor21[arg1].field_257 % 128 + 384] = 0
        else:
            if bool(stor21[arg1].field_256) == stor21[arg1].field_257 % 128 < 32:
                revert with 'NH{q', 34
            if not stor21[arg1].field_257 % 128:
                if ceil32(uint255(stor21[arg1].field_1)) > uint255(stor21[arg1].field_1):
                    mem[ceil32(uint255(stor21[arg1].field_1)) + ceil32(stor21[arg1].field_257 % 128) + uint255(stor21[arg1].field_1) + 352] = 0
                mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(stor21[arg1].field_257 % 128) + 352] = stor21[arg1].field_257 % 128
                mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(stor21[arg1].field_257 % 128) + 384 len ceil32(stor21[arg1].field_257 % 128)] = mem[ceil32(uint255(stor21[arg1].field_1)) + 160 len ceil32(stor21[arg1].field_257 % 128)]
                if ceil32(stor21[arg1].field_257 % 128) > stor21[arg1].field_257 % 128:
                    mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(stor21[arg1].field_257 % 128) + stor21[arg1].field_257 % 128 + 384] = 0
            else:
                if 31 >= stor21[arg1].field_257 % 128:
                    mem[ceil32(uint255(stor21[arg1].field_1)) + 160] = 256 * Mask(248, 0, stor21[arg1].field_264)
                else:
                    mem[ceil32(uint255(stor21[arg1].field_1)) + 160] = uint256(stor21[arg1][1].field_0)
                    idx = ceil32(uint255(stor21[arg1].field_1)) + 160
                    s = 0
                    while ceil32(uint255(stor21[arg1].field_1)) + stor21[arg1].field_257 % 128 + 128 > idx:
                        mem[idx + 32] = uint256(stor21[arg1][s + 1].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor21[arg1].field_1)) > uint255(stor21[arg1].field_1):
                    mem[ceil32(uint255(stor21[arg1].field_1)) + ceil32(stor21[arg1].field_257 % 128) + uint255(stor21[arg1].field_1) + 352] = 0
                mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(stor21[arg1].field_257 % 128) + 352] = stor21[arg1].field_257 % 128
                mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(stor21[arg1].field_257 % 128) + 384 len ceil32(stor21[arg1].field_257 % 128)] = mem[ceil32(uint255(stor21[arg1].field_1)) + 160 len ceil32(stor21[arg1].field_257 % 128)]
                if ceil32(stor21[arg1].field_257 % 128) > stor21[arg1].field_257 % 128:
                    mem[(2 * ceil32(uint255(stor21[arg1].field_1))) + ceil32(stor21[arg1].field_257 % 128) + stor21[arg1].field_257 % 128 + 384] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor21[arg1].field_1)), data=mem[128 len ceil32(uint255(stor21[arg1].field_1))], stor21[arg1].field_256 % 128, mem[ceil32(uint255(stor21[arg1].field_1)) + 160 len ceil32(stor21[arg1].field_257 % 128)]), 
               ceil32(uint255(stor21[arg1].field_1)) + 192,
               uint256(stor21[arg1].field_512),
               uint256(stor21[arg1].field_768),
               bool(stor21[arg1].field_1024)
    if bool(stor21[arg1].field_0) == stor21[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor21[arg1].field_0):
        if bool(stor21[arg1].field_0) == uint255(stor21[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor21[arg1].field_1):
            if 31 >= uint255(stor21[arg1].field_1):
                mem[128] = 256 * Mask(248, 0, stor21[arg1].field_8)
            else:
                mem[128] = uint256(stor21[arg1].field_0)
                idx = 128
                s = 0
                while uint255(stor21[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor21[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor21[arg1].field_0) == stor21[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor21[arg1].field_1 % 128:
            if 31 >= stor21[arg1].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor21[arg1].field_8)
            else:
                mem[128] = uint256(stor21[arg1].field_0)
                idx = 128
                s = 0
                while stor21[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor21[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    if bool(stor21[arg1].field_256):
        if bool(stor21[arg1].field_256) == uint255(stor21[arg1].field_257) < 32:
            revert with 'NH{q', 34
        if bool(stor21[arg1].field_256):
            if bool(stor21[arg1].field_256) == uint255(stor21[arg1].field_257) < 32:
                revert with 'NH{q', 34
            if not uint255(stor21[arg1].field_257):
                if ceil32(stor21[arg1].field_1 % 128) > stor21[arg1].field_1 % 128:
                    mem[ceil32(stor21[arg1].field_1 % 128) + ceil32(uint255(stor21[arg1].field_257)) + stor21[arg1].field_1 % 128 + 352] = 0
                mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(uint255(stor21[arg1].field_257)) + 352] = uint255(stor21[arg1].field_257)
                mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(uint255(stor21[arg1].field_257)) + 384 len ceil32(uint255(stor21[arg1].field_257))] = mem[ceil32(stor21[arg1].field_1 % 128) + 160 len ceil32(uint255(stor21[arg1].field_257))]
                if ceil32(uint255(stor21[arg1].field_257)) > uint255(stor21[arg1].field_257):
                    mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(uint255(stor21[arg1].field_257)) + uint255(stor21[arg1].field_257) + 384] = 0
            else:
                if 31 >= uint255(stor21[arg1].field_257):
                    mem[ceil32(stor21[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, stor21[arg1].field_264)
                else:
                    mem[ceil32(stor21[arg1].field_1 % 128) + 160] = uint256(stor21[arg1][1].field_0)
                    idx = ceil32(stor21[arg1].field_1 % 128) + 160
                    s = 0
                    while ceil32(stor21[arg1].field_1 % 128) + uint255(stor21[arg1].field_257) + 128 > idx:
                        mem[idx + 32] = uint256(stor21[arg1][s + 1].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor21[arg1].field_1 % 128) > stor21[arg1].field_1 % 128:
                    mem[ceil32(stor21[arg1].field_1 % 128) + ceil32(uint255(stor21[arg1].field_257)) + stor21[arg1].field_1 % 128 + 352] = 0
                mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(uint255(stor21[arg1].field_257)) + 352] = uint255(stor21[arg1].field_257)
                mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(uint255(stor21[arg1].field_257)) + 384 len ceil32(uint255(stor21[arg1].field_257))] = mem[ceil32(stor21[arg1].field_1 % 128) + 160 len ceil32(uint255(stor21[arg1].field_257))]
                if ceil32(uint255(stor21[arg1].field_257)) > uint255(stor21[arg1].field_257):
                    mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(uint255(stor21[arg1].field_257)) + uint255(stor21[arg1].field_257) + 384] = 0
        else:
            if bool(stor21[arg1].field_256) == stor21[arg1].field_257 % 128 < 32:
                revert with 'NH{q', 34
            if not stor21[arg1].field_257 % 128:
                if ceil32(stor21[arg1].field_1 % 128) > stor21[arg1].field_1 % 128:
                    mem[ceil32(stor21[arg1].field_1 % 128) + ceil32(uint255(stor21[arg1].field_257)) + stor21[arg1].field_1 % 128 + 352] = 0
                mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(uint255(stor21[arg1].field_257)) + 352] = uint255(stor21[arg1].field_257)
                mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(uint255(stor21[arg1].field_257)) + 384 len ceil32(uint255(stor21[arg1].field_257))] = mem[ceil32(stor21[arg1].field_1 % 128) + 160 len ceil32(uint255(stor21[arg1].field_257))]
                if ceil32(uint255(stor21[arg1].field_257)) > uint255(stor21[arg1].field_257):
                    mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(uint255(stor21[arg1].field_257)) + uint255(stor21[arg1].field_257) + 384] = 0
            else:
                if 31 >= stor21[arg1].field_257 % 128:
                    mem[ceil32(stor21[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, stor21[arg1].field_264)
                else:
                    mem[ceil32(stor21[arg1].field_1 % 128) + 160] = uint256(stor21[arg1][1].field_0)
                    idx = ceil32(stor21[arg1].field_1 % 128) + 160
                    s = 0
                    while ceil32(stor21[arg1].field_1 % 128) + stor21[arg1].field_257 % 128 + 128 > idx:
                        mem[idx + 32] = uint256(stor21[arg1][s + 1].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor21[arg1].field_1 % 128) > stor21[arg1].field_1 % 128:
                    mem[ceil32(stor21[arg1].field_1 % 128) + ceil32(uint255(stor21[arg1].field_257)) + stor21[arg1].field_1 % 128 + 352] = 0
                mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(uint255(stor21[arg1].field_257)) + 352] = uint255(stor21[arg1].field_257)
                mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(uint255(stor21[arg1].field_257)) + 384 len ceil32(uint255(stor21[arg1].field_257))] = mem[ceil32(stor21[arg1].field_1 % 128) + 160 len ceil32(uint255(stor21[arg1].field_257))]
                if ceil32(uint255(stor21[arg1].field_257)) > uint255(stor21[arg1].field_257):
                    mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(uint255(stor21[arg1].field_257)) + uint255(stor21[arg1].field_257) + 384] = 0
        return Array(len=stor21[arg1].field_0 % 128, data=mem[128 len ceil32(stor21[arg1].field_1 % 128)], 2 * Mask(256, -1, uint255(stor21[arg1].field_257)), mem[ceil32(stor21[arg1].field_1 % 128) + 160 len ceil32(uint255(stor21[arg1].field_257))]), 
               ceil32(stor21[arg1].field_1 % 128) + 192,
               uint256(stor21[arg1].field_512),
               uint256(stor21[arg1].field_768),
               bool(stor21[arg1].field_1024)
    if bool(stor21[arg1].field_256) == stor21[arg1].field_257 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor21[arg1].field_256):
        if bool(stor21[arg1].field_256) == uint255(stor21[arg1].field_257) < 32:
            revert with 'NH{q', 34
        if not uint255(stor21[arg1].field_257):
            if ceil32(stor21[arg1].field_1 % 128) > stor21[arg1].field_1 % 128:
                mem[ceil32(stor21[arg1].field_1 % 128) + ceil32(stor21[arg1].field_257 % 128) + stor21[arg1].field_1 % 128 + 352] = 0
            mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(stor21[arg1].field_257 % 128) + 352] = stor21[arg1].field_257 % 128
            mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(stor21[arg1].field_257 % 128) + 384 len ceil32(stor21[arg1].field_257 % 128)] = mem[ceil32(stor21[arg1].field_1 % 128) + 160 len ceil32(stor21[arg1].field_257 % 128)]
            if ceil32(stor21[arg1].field_257 % 128) > stor21[arg1].field_257 % 128:
                mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(stor21[arg1].field_257 % 128) + stor21[arg1].field_257 % 128 + 384] = 0
        else:
            if 31 >= uint255(stor21[arg1].field_257):
                mem[ceil32(stor21[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, stor21[arg1].field_264)
            else:
                mem[ceil32(stor21[arg1].field_1 % 128) + 160] = uint256(stor21[arg1][1].field_0)
                idx = ceil32(stor21[arg1].field_1 % 128) + 160
                s = 0
                while ceil32(stor21[arg1].field_1 % 128) + uint255(stor21[arg1].field_257) + 128 > idx:
                    mem[idx + 32] = uint256(stor21[arg1][s + 1].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor21[arg1].field_1 % 128) > stor21[arg1].field_1 % 128:
                mem[ceil32(stor21[arg1].field_1 % 128) + ceil32(stor21[arg1].field_257 % 128) + stor21[arg1].field_1 % 128 + 352] = 0
            mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(stor21[arg1].field_257 % 128) + 352] = stor21[arg1].field_257 % 128
            mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(stor21[arg1].field_257 % 128) + 384 len ceil32(stor21[arg1].field_257 % 128)] = mem[ceil32(stor21[arg1].field_1 % 128) + 160 len ceil32(stor21[arg1].field_257 % 128)]
            if ceil32(stor21[arg1].field_257 % 128) > stor21[arg1].field_257 % 128:
                mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(stor21[arg1].field_257 % 128) + stor21[arg1].field_257 % 128 + 384] = 0
    else:
        if bool(stor21[arg1].field_256) == stor21[arg1].field_257 % 128 < 32:
            revert with 'NH{q', 34
        if not stor21[arg1].field_257 % 128:
            if ceil32(stor21[arg1].field_1 % 128) > stor21[arg1].field_1 % 128:
                mem[ceil32(stor21[arg1].field_1 % 128) + ceil32(stor21[arg1].field_257 % 128) + stor21[arg1].field_1 % 128 + 352] = 0
            mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(stor21[arg1].field_257 % 128) + 352] = stor21[arg1].field_257 % 128
            mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(stor21[arg1].field_257 % 128) + 384 len ceil32(stor21[arg1].field_257 % 128)] = mem[ceil32(stor21[arg1].field_1 % 128) + 160 len ceil32(stor21[arg1].field_257 % 128)]
            if ceil32(stor21[arg1].field_257 % 128) > stor21[arg1].field_257 % 128:
                mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(stor21[arg1].field_257 % 128) + stor21[arg1].field_257 % 128 + 384] = 0
        else:
            if 31 >= stor21[arg1].field_257 % 128:
                mem[ceil32(stor21[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, stor21[arg1].field_264)
            else:
                mem[ceil32(stor21[arg1].field_1 % 128) + 160] = uint256(stor21[arg1][1].field_0)
                idx = ceil32(stor21[arg1].field_1 % 128) + 160
                s = 0
                while ceil32(stor21[arg1].field_1 % 128) + stor21[arg1].field_257 % 128 + 128 > idx:
                    mem[idx + 32] = uint256(stor21[arg1][s + 1].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor21[arg1].field_1 % 128) > stor21[arg1].field_1 % 128:
                mem[ceil32(stor21[arg1].field_1 % 128) + ceil32(stor21[arg1].field_257 % 128) + stor21[arg1].field_1 % 128 + 352] = 0
            mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(stor21[arg1].field_257 % 128) + 352] = stor21[arg1].field_257 % 128
            mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(stor21[arg1].field_257 % 128) + 384 len ceil32(stor21[arg1].field_257 % 128)] = mem[ceil32(stor21[arg1].field_1 % 128) + 160 len ceil32(stor21[arg1].field_257 % 128)]
            if ceil32(stor21[arg1].field_257 % 128) > stor21[arg1].field_257 % 128:
                mem[(2 * ceil32(stor21[arg1].field_1 % 128)) + ceil32(stor21[arg1].field_257 % 128) + stor21[arg1].field_257 % 128 + 384] = 0
    return Array(len=stor21[arg1].field_0 % 128, data=mem[128 len ceil32(stor21[arg1].field_1 % 128)], stor21[arg1].field_256 % 128, mem[ceil32(stor21[arg1].field_1 % 128) + 160 len ceil32(stor21[arg1].field_257 % 128)]), 
           ceil32(stor21[arg1].field_1 % 128) + 192,
           uint256(stor21[arg1].field_512),
           uint256(stor21[arg1].field_768),
           bool(stor21[arg1].field_1024)
}



}

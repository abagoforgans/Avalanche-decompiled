contract main {




// =====================  Runtime code  =====================


#
#  - sub_1a271c43(?)
#  - withdrawToken(address arg1, uint256 arg2)
#
const sub_2a4acab4(?) = 0xb9ac768c372bd64dbacef5b4d1eb2e0ee81102c6fbdcc8043a844cd31c951dd9

const sub_93aaa146(?) = 0xc441685f3ea9687e86f0da1963c2bccc159486dd456a8454c863ddbe2b0f7f21


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint8 stor101;
uint256 stor151;
uint256 stor201;
uint256 stor202;
address configAddress;
mapping of uint8 stor254;

function paused() {
    return bool(stor101)
}

function sub_61a4422b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor254[arg1])
}

function config() {
    return configAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function withdrawNative(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xc303ca80: arg1, owner
    stor151 = 1
}

function _initialize(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0, 'Initializable: contract is not initializing'
    stor201 = sha3('SmartAccount')
    stor202 = sha3('1')
    owner = arg2
    emit OwnershipTransferred(owner, arg2);
    configAddress = arg1
}

function portfolio() {
    staticcall configAddress.0x7b103999 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 0x7f96a79d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = chainid
    staticcall address(ext_call.return_data[0]).0x7f96a79d with:
            gas gas_remaining wei
           args address(this.address), chainid
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64
    require mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + 96]
    require _8 + (32 * _9) + 32 <= return_data.size
    idx = ceil32(return_data.size) + _8 + 128
    s = (2 * ceil32(return_data.size)) + 128
    while idx < ceil32(return_data.size) + _8 + (32 * _9) + 128:
        _42 = mem[idx]
        require mem[idx] <= test266151307()
        require return_data.size + -_8 + -mem[idx] - 32 >= 128
        _44 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require return_data.size + -_8 + -_42 - 32 >= 96
        _49 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require mem[ceil32(return_data.size) + _8 + _42 + 128] == Mask(88, 168, mem[ceil32(return_data.size) + _8 + _42 + 128])
        mem[_49] = mem[ceil32(return_data.size) + _8 + _42 + 128]
        require mem[ceil32(return_data.size) + _8 + _42 + 160] < 2
        mem[_49 + 32] = mem[ceil32(return_data.size) + _8 + _42 + 160]
        require mem[ceil32(return_data.size) + _8 + _42 + 192] == mem[ceil32(return_data.size) + _8 + _42 + 204 len 20]
        mem[_49 + 64] = mem[ceil32(return_data.size) + _8 + _42 + 192]
        mem[_44] = _49
        _58 = mem[ceil32(return_data.size) + _8 + _42 + 224]
        require mem[ceil32(return_data.size) + _8 + _42 + 224] <= test266151307()
        require ceil32(return_data.size) + _8 + _42 + mem[ceil32(return_data.size) + _8 + _42 + 224] + 159 < ceil32(return_data.size) + return_data.size + 96
        _61 = mem[ceil32(return_data.size) + _8 + _42 + mem[ceil32(return_data.size) + _8 + _42 + 224] + 128]
        if mem[ceil32(return_data.size) + _8 + _42 + mem[ceil32(return_data.size) + _8 + _42 + 224] + 128] > test266151307():
            revert with 'NH{q', 65
        _64 = mem[64]
        if mem[64] + floor32(mem[ceil32(return_data.size) + _8 + _42 + mem[ceil32(return_data.size) + _8 + _42 + 224] + 128]) + 1 > test266151307() or mem[64] + floor32(mem[ceil32(return_data.size) + _8 + _42 + mem[ceil32(return_data.size) + _8 + _42 + 224] + 128]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[ceil32(return_data.size) + _8 + _42 + mem[ceil32(return_data.size) + _8 + _42 + 224] + 128]) + 1
        mem[_64] = mem[ceil32(return_data.size) + _8 + _42 + mem[ceil32(return_data.size) + _8 + _42 + 224] + 128]
        require _8 + _42 + _58 + (128 * _61) + 64 <= return_data.size
        t = ceil32(return_data.size) + _8 + _42 + _58 + 160
        u = _64 + 32
        while t < ceil32(return_data.size) + _8 + _42 + _58 + (128 * _61) + 160:
            require ceil32(return_data.size) + return_data.size + -t + 96 >= 128
            _77 = mem[64]
            if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 64
            require ceil32(return_data.size) + return_data.size + -t + 96 >= 96
            _79 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 96
            require mem[t] == Mask(88, 168, mem[t])
            mem[_79] = mem[t]
            require mem[t + 32] == mem[t + 63 len 1]
            mem[_79 + 32] = mem[t + 32]
            require mem[t + 64] == mem[t + 76 len 20]
            mem[_79 + 64] = mem[t + 64]
            mem[_77] = _79
            require mem[t + 96] == mem[t + 96]
            mem[_77 + 32] = mem[t + 96]
            mem[u] = _77
            t = t + 128
            u = u + 32
            continue 
        mem[_44 + 32] = _64
        mem[s] = _44
        idx = idx + 32
        s = s + 32
        continue 
    _43 = mem[64]
    mem[mem[64]] = 32
    _45 = mem[(2 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = mem[64] + (32 * _45) + 64
    u = mem[64] + 64
    while idx < _45:
        mem[u] = t + -_43 - 64
        _73 = mem[s]
        _75 = mem[mem[s]]
        mem[t] = Mask(88, 168, mem[mem[mem[s]]])
        if mem[_75 + 32] >= 2:
            revert with 'NH{q', 33
        mem[t + 32] = mem[_75 + 32]
        mem[t + 64] = mem[_75 + 76 len 20]
        _81 = mem[_73 + 32]
        mem[t + 96] = 128
        _83 = mem[_81]
        mem[t + 128] = mem[_81]
        v = 0
        w = _81 + 32
        x = t + 160
        while v < _83:
            _93 = mem[w]
            _94 = mem[mem[w]]
            mem[x] = Mask(88, 168, mem[mem[mem[w]]])
            mem[x + 32] = mem[_94 + 63 len 1]
            mem[x + 64] = mem[_94 + 76 len 20]
            mem[x + 96] = mem[_93 + 32]
            v = v + 1
            w = w + 32
            x = x + 128
            continue 
        idx = idx + 1
        s = s + 32
        t = t + (128 * _83) + 160
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}

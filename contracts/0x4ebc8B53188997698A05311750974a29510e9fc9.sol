contract main {




// =====================  Runtime code  =====================


#
#  - withdrawToken(address arg1, uint256 arg2)
#
const sub_2a4acab4(?) = 0x95fa0cba9525a9ea7aeef0c7092d86b3548e1d05e365f77811beb993b5f66a38

const sub_93aaa146(?) = 0x6da59a08c244ec0f5cafc4d9c7a3c171c8636bf4bd06e347aae60933e7e8398f


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

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor101:
        revert with 0, 'Pausable: paused'
    stor101 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor101:
        revert with 0, 'Pausable: not paused'
    stor101 = 0
    emit Unpaused(msg.sender);
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
    staticcall configAddress.registry() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 0x3ed50e0c00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = this.address
    staticcall address(ext_call.return_data[0]).0x3ed50e0c with:
            gas gas_remaining wei
           args this.address
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
        _38 = mem[idx]
        require mem[idx] <= test266151307()
        require return_data.size + -_8 + -mem[idx] - 32 >= 128
        _40 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require return_data.size + -_8 + -_38 - 32 >= 96
        _45 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require mem[ceil32(return_data.size) + _8 + _38 + 128] == Mask(88, 168, mem[ceil32(return_data.size) + _8 + _38 + 128])
        mem[_45] = mem[ceil32(return_data.size) + _8 + _38 + 128]
        require mem[ceil32(return_data.size) + _8 + _38 + 160] < 3
        mem[_45 + 32] = mem[ceil32(return_data.size) + _8 + _38 + 160]
        require mem[ceil32(return_data.size) + _8 + _38 + 192] == mem[ceil32(return_data.size) + _8 + _38 + 204 len 20]
        mem[_45 + 64] = mem[ceil32(return_data.size) + _8 + _38 + 192]
        mem[_40] = _45
        _54 = mem[ceil32(return_data.size) + _8 + _38 + 224]
        require mem[ceil32(return_data.size) + _8 + _38 + 224] <= test266151307()
        require ceil32(return_data.size) + _8 + _38 + mem[ceil32(return_data.size) + _8 + _38 + 224] + 159 < ceil32(return_data.size) + return_data.size + 96
        _57 = mem[ceil32(return_data.size) + _8 + _38 + mem[ceil32(return_data.size) + _8 + _38 + 224] + 128]
        if mem[ceil32(return_data.size) + _8 + _38 + mem[ceil32(return_data.size) + _8 + _38 + 224] + 128] > test266151307():
            revert with 'NH{q', 65
        _58 = mem[64]
        if mem[64] + floor32(mem[ceil32(return_data.size) + _8 + _38 + mem[ceil32(return_data.size) + _8 + _38 + 224] + 128]) + 1 > test266151307() or mem[64] + floor32(mem[ceil32(return_data.size) + _8 + _38 + mem[ceil32(return_data.size) + _8 + _38 + 224] + 128]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[ceil32(return_data.size) + _8 + _38 + mem[ceil32(return_data.size) + _8 + _38 + 224] + 128]) + 1
        mem[_58] = mem[ceil32(return_data.size) + _8 + _38 + mem[ceil32(return_data.size) + _8 + _38 + 224] + 128]
        require _8 + _38 + _54 + (96 * _57) + 64 <= return_data.size
        t = ceil32(return_data.size) + _8 + _38 + _54 + 160
        u = _58 + 32
        while t < ceil32(return_data.size) + _8 + _38 + _54 + (96 * _57) + 160:
            require ceil32(return_data.size) + return_data.size + -t + 96 >= 96
            _69 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 96
            require mem[t] == mem[t + 12 len 20]
            mem[_69] = mem[t]
            require mem[t + 32] == mem[t + 44 len 20]
            mem[_69 + 32] = mem[t + 32]
            require mem[t + 64] == mem[t + 64]
            mem[_69 + 64] = mem[t + 64]
            mem[u] = _69
            t = t + 96
            u = u + 32
            continue 
        mem[_40 + 32] = _58
        mem[s] = _40
        idx = idx + 32
        s = s + 32
        continue 
    _39 = mem[64]
    mem[mem[64]] = 32
    _41 = mem[(2 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = mem[64] + (32 * _41) + 64
    u = mem[64] + 64
    while idx < _41:
        mem[u] = t + -_39 - 64
        _65 = mem[s]
        _67 = mem[mem[s]]
        mem[t] = Mask(88, 168, mem[mem[mem[s]]])
        if mem[_67 + 32] >= 3:
            revert with 'NH{q', 33
        mem[t + 32] = mem[_67 + 32]
        mem[t + 64] = mem[_67 + 76 len 20]
        _73 = mem[_65 + 32]
        mem[t + 96] = 128
        _75 = mem[_73]
        mem[t + 128] = mem[_73]
        v = 0
        w = _73 + 32
        x = t + 160
        while v < _75:
            _81 = mem[w]
            mem[x] = mem[mem[w] + 12 len 20]
            mem[x + 32] = mem[_81 + 44 len 20]
            mem[x + 64] = mem[_81 + 64]
            v = v + 1
            w = w + 32
            x = x + 96
            continue 
        idx = idx + 1
        s = s + 32
        t = t + (96 * _75) + 160
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_ede2f244(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if stor101:
        revert with 0, 'Pausable: paused'
    mem[0] = ('cd', 4)[1]
    mem[32] = 254
    if stor254[('cd', 4)[1]]:
        revert with 0, 'SA3'
    staticcall configAddress.registry() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ('cd', 4)[5] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
    idx = var166004
    s = var166005
    while idx < cd[(cd[4] + ('cd', 4)[5] + 4)]:
        require ('cd', 4)[5] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
        if idx >= cd[(cd[4] + ('cd', 4)[5] + 4)]:
            revert with 'NH{q', 50
        require cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] < calldata.size + -cd[4] + -('cd', 4)[5] - 163
        require cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)] == address(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)])
        require ('cd', 4)[5] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
        if idx >= cd[(cd[4] + ('cd', 4)[5] + 4)]:
            revert with 'NH{q', 50
        require cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] < calldata.size + -cd[4] + -('cd', 4)[5] - 163
        require cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 68)] == address(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 68)])
        require ('cd', 4)[5] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
        if idx >= cd[(cd[4] + ('cd', 4)[5] + 4)]:
            revert with 'NH{q', 50
        require cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] < calldata.size + -cd[4] + -('cd', 4)[5] - 163
        require ('cd', 4)[5] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
        if idx >= cd[(cd[4] + ('cd', 4)[5] + 4)]:
            revert with 'NH{q', 50
        require cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] < calldata.size + -cd[4] + -('cd', 4)[5] - 163
        require cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] < calldata.size + -cd[4] + -('cd', 4)[5] + -cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] - 67
        require cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 36)] <= test266151307()
        require cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 68 <= calldata.size - cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 36)]
        _215 = mem[64]
        mem[mem[64] len cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 36)]] = call.data[cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 68 len cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 36)]]
        mem[mem[64] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 36)]] = 0
        _217 = sha3(mem[mem[64] len _215 + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 36)] - mem[64]])
        _218 = mem[64]
        mem[mem[64] + 32] = 0x6da59a08c244ec0f5cafc4d9c7a3c171c8636bf4bd06e347aae60933e7e8398f
        mem[mem[64] + 64] = address(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)])
        mem[mem[64] + 96] = address(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 68)])
        mem[mem[64] + 128] = cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 100)]
        mem[mem[64] + 160] = _217
        _226 = mem[64]
        mem[mem[64]] = 160
        mem[64] = mem[64] + 192
        _228 = sha3(mem[_226 + 32 len mem[_226]])
        _230 = mem[s]
        t = 0
        while t < _230:
            mem[_218 + t + 224] = mem[s + t + 32]
            require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
            t = t + 32
            continue 
        mem[_218 + _230 + 224] = _228
        if ceil32(_230) <= _230:
            _275 = mem[64]
            mem[mem[64]] = _218 + _230 + -mem[64] + 224
            mem[64] = _218 + _230 + 256
            if idx == -1:
                revert with 'NH{q', 17
            require ('cd', 4)[5] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
            idx = idx + 1
            s = _275
            continue 
        _276 = mem[64]
        mem[mem[64]] = _218 + _230 + -mem[64] + 224
        mem[64] = _218 + _230 + 256
        if idx == -1:
            revert with 'NH{q', 17
        require ('cd', 4)[5] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
        idx = idx + 1
        s = _276
        continue 
    _205 = sha3(mem[s + 32 len mem[s]])
    _206 = mem[64]
    mem[mem[64] + 32] = 0x95fa0cba9525a9ea7aeef0c7092d86b3548e1d05e365f77811beb993b5f66a38
    mem[mem[64] + 64] = chainid
    mem[mem[64] + 96] = ('cd', 4)[0]
    mem[mem[64] + 128] = _205
    mem[mem[64] + 160] = ('cd', 4)[1]
    _207 = mem[64]
    mem[mem[64]] = 160
    mem[64] = mem[64] + 192
    _209 = sha3(mem[_207 + 32 len mem[_207]])
    mem[_206 + 224] = 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f
    mem[_206 + 256] = stor201
    mem[_206 + 288] = stor202
    mem[_206 + 320] = ('cd', 4)[0]
    mem[_206 + 352] = this.address
    mem[_206 + 192] = 160
    mem[_206 + 416] = 0x1901000000000000000000000000000000000000000000000000000000000000
    mem[_206 + 418] = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor201, stor202, ('cd', 4)[0], this.address)
    mem[_206 + 450] = _209
    mem[_206 + 384] = 66
    require ('cd', 4)[4] == uint8(('cd', 4)[4])
    if ('cd', 4)[3] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8(('cd', 4)[4]) == 27:
        mem[64] = _206 + 514
        mem[_206 + 514] = sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor201, stor202, ('cd', 4)[0], this.address), _209)
        mem[_206 + 546] = uint8(('cd', 4)[4])
        mem[_206 + 578] = ('cd', 4)[2]
        mem[_206 + 610] = ('cd', 4)[3]
        signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor201, stor202, ('cd', 4)[0], this.address), _209), ('cd', 4)[4] << 248, ('cd', 4)[2], ('cd', 4)[3]) 
        mem[_206 + 482] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if address(signer) != owner:
            revert with 0, 'SA4'
        require ('cd', 4)[5] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
        idx = var263004
        while idx < cd[(cd[4] + ('cd', 4)[5] + 4)]:
            require ('cd', 4)[5] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
            if idx >= cd[(cd[4] + ('cd', 4)[5] + 4)]:
                revert with 'NH{q', 50
            require cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] < calldata.size + -cd[4] + -('cd', 4)[5] - 163
            require cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)] == address(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)])
            mem[mem[64] + 4] = address(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)])
            staticcall address(ext_call.return_data[0]).0xb97d445b with:
                    gas gas_remaining wei
                   args address(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _407 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_407] == bool(mem[_407])
            if not mem[_407]:
                revert with 0, 'SA5'
            require cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)] == address(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)])
            if ext_code.size(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)]) <= 0:
                revert with 0, 'SA6'
            require cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)] == address(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)])
            require cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] < calldata.size + -cd[4] + -('cd', 4)[5] + -cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] - 67
            require cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 36)] <= test266151307()
            require cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 68 <= calldata.size - cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 36)]
            _419 = mem[64]
            mem[mem[64] len cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 36)]] = call.data[cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 68 len cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 36)]]
            mem[mem[64] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 36)]] = 0
            delegate address(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _419 + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 36)] + -mem[64] - 4]
            if not return_data.size:
                if delegate.return_code:
                    if idx == -1:
                        revert with 'NH{q', 17
                    require ('cd', 4)[5] < calldata.size + -cd[4] - 35
                    require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
                    require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
                    idx = idx + 1
                    continue 
                _425 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _429 = mem[96]
                mem[mem[64] + 36] = mem[96]
                idx = 0
                while idx < _429:
                    mem[_425 + idx + 68] = mem[idx + 128]
                    require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
                    require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
                    idx = idx + 32
                    continue 
                if ceil32(_429) > _429:
                    mem[_425 + _429 + 68] = 0
                revert with memory
                  from mem[64]
                   len _425 + ceil32(_429) + -mem[64] + 68
            _423 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_423] = return_data.size
            mem[_423 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                if idx == -1:
                    revert with 'NH{q', 17
                require ('cd', 4)[5] < calldata.size + -cd[4] - 35
                require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
                idx = idx + 1
                continue 
            _426 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            idx = 0
            while idx < return_data.size:
                mem[_426 + idx + 68] = mem[_423 + idx + 32]
                require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
                idx = idx + 32
                continue 
            if ceil32(return_data.size) > return_data.size:
                mem[_426 + return_data.size + 68] = 0
            revert with memory
              from mem[64]
               len _426 + ceil32(return_data.size) + -mem[64] + 68
        mem[32] = 254
        stor254[('cd', 4)[1]] = 1
        _400 = mem[64]
        mem[mem[64]] = 32
        require ('cd', 4).length == ('cd', 4).length
        mem[mem[64] + 32] = ('cd', 4).length
        require ('cd', 4)[0] == ('cd', 4)[0]
        mem[mem[64] + 64] = ('cd', 4)[0]
        require ('cd', 4)[1] == ('cd', 4)[1]
        mem[mem[64] + 96] = ('cd', 4)[1]
        require ('cd', 4)[2] == ('cd', 4)[2]
        mem[mem[64] + 128] = ('cd', 4)[2]
        require ('cd', 4)[3] == ('cd', 4)[3]
        mem[mem[64] + 160] = ('cd', 4)[3]
        require ('cd', 4)[4] == uint8(('cd', 4)[4])
        mem[mem[64] + 192] = uint8(('cd', 4)[4])
        require ('cd', 4)[5] < calldata.size + -cd[4] - 35
        require cd[(('cd', 4)[5] + cd[4] + 4)] <= test266151307()
        require cd[4] + 4 <= calldata.size - (32 * cd[(('cd', 4)[5] + cd[4] + 4)])
        mem[mem[64] + 224] = 224
        mem[mem[64] + 256] = cd[(('cd', 4)[5] + cd[4] + 4)]
        idx = 0
        s = ('cd', 4)[5] + cd[4] + 36
        t = mem[64] + (32 * cd[(('cd', 4)[5] + cd[4] + 4)]) + 288
        u = mem[64] + 288
        while idx < cd[(('cd', 4)[5] + cd[4] + 4)]:
            mem[u] = t + -_400 - 288
            require cd[s] < calldata.size + -('cd', 4)[5] + -cd[4] - 163
            require cd[(cd[s] + ('cd', 4)[5] + cd[4] + 36)] == address(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 36)])
            mem[t] = address(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 36)])
            require cd[(cd[s] + ('cd', 4)[5] + cd[4] + 68)] == address(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 68)])
            mem[t + 32] = address(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 68)])
            require cd[(cd[s] + ('cd', 4)[5] + cd[4] + 100)] == cd[(cd[s] + ('cd', 4)[5] + cd[4] + 100)]
            mem[t + 64] = cd[(cd[s] + ('cd', 4)[5] + cd[4] + 100)]
            require cd[(cd[s] + ('cd', 4)[5] + cd[4] + 132)] < calldata.size + -cd[s] + -('cd', 4)[5] + -cd[4] - 67
            require cd[(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 132)] + cd[s] + ('cd', 4)[5] + cd[4] + 36)] <= test266151307()
            require cd[s] + ('cd', 4)[5] + cd[4] + 36 <= calldata.size - cd[(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 132)] + cd[s] + ('cd', 4)[5] + cd[4] + 36)]
            mem[t + 96] = 128
            mem[t + 128] = cd[(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 132)] + cd[s] + ('cd', 4)[5] + cd[4] + 36)]
            mem[t + 160 len cd[(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 132)] + cd[s] + ('cd', 4)[5] + cd[4] + 36)]] = call.data[cd[(cd[s] + ('cd', 4)[5] + cd[4] + 132)] + cd[s] + ('cd', 4)[5] + cd[4] + 68 len cd[(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 132)] + cd[s] + ('cd', 4)[5] + cd[4] + 36)]]
            mem[t + cd[(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 132)] + cd[s] + ('cd', 4)[5] + cd[4] + 36)] + 160] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 132)] + cd[s] + ('cd', 4)[5] + cd[4] + 36)]) + 160
            u = u + 32
            continue 
        emit 0xd30f9c0c: mem[mem[64] len _400 + (193 * cd[(('cd', 4)[5] + cd[4] + 4)]) + -mem[64] + 288]
    else:
        if uint8(('cd', 4)[4]) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
        mem[64] = _206 + 514
        mem[_206 + 514] = sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor201, stor202, ('cd', 4)[0], this.address), _209)
        mem[_206 + 546] = uint8(('cd', 4)[4])
        mem[_206 + 578] = ('cd', 4)[2]
        mem[_206 + 610] = ('cd', 4)[3]
        signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor201, stor202, ('cd', 4)[0], this.address), _209), ('cd', 4)[4] << 248, ('cd', 4)[2], ('cd', 4)[3]) 
        mem[_206 + 482] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if address(signer) != owner:
            revert with 0, 'SA4'
        require ('cd', 4)[5] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
        idx = var264004
        while idx < cd[(cd[4] + ('cd', 4)[5] + 4)]:
            require ('cd', 4)[5] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
            if idx >= cd[(cd[4] + ('cd', 4)[5] + 4)]:
                revert with 'NH{q', 50
            require cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] < calldata.size + -cd[4] + -('cd', 4)[5] - 163
            require cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)] == address(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)])
            mem[mem[64] + 4] = address(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)])
            staticcall address(ext_call.return_data[0]).0xb97d445b with:
                    gas gas_remaining wei
                   args address(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _408 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_408] == bool(mem[_408])
            if not mem[_408]:
                revert with 0, 'SA5'
            require cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)] == address(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)])
            if ext_code.size(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)]) <= 0:
                revert with 0, 'SA6'
            require cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)] == address(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)])
            require cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] < calldata.size + -cd[4] + -('cd', 4)[5] + -cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] - 67
            require cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 36)] <= test266151307()
            require cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 68 <= calldata.size - cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 36)]
            _420 = mem[64]
            mem[mem[64] len cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 36)]] = call.data[cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 68 len cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 36)]]
            mem[mem[64] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 36)]] = 0
            delegate address(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _420 + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + (32 * idx) + 36)] + 132)] + 36)] + -mem[64] - 4]
            if not return_data.size:
                if delegate.return_code:
                    if idx == -1:
                        revert with 'NH{q', 17
                    require ('cd', 4)[5] < calldata.size + -cd[4] - 35
                    require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
                    require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
                    idx = idx + 1
                    continue 
                _427 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _431 = mem[96]
                mem[mem[64] + 36] = mem[96]
                idx = 0
                while idx < _431:
                    mem[_427 + idx + 68] = mem[idx + 128]
                    require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
                    require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
                    idx = idx + 32
                    continue 
                if ceil32(_431) > _431:
                    mem[_427 + _431 + 68] = 0
                revert with memory
                  from mem[64]
                   len _427 + ceil32(_431) + -mem[64] + 68
            _424 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_424] = return_data.size
            mem[_424 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                if idx == -1:
                    revert with 'NH{q', 17
                require ('cd', 4)[5] < calldata.size + -cd[4] - 35
                require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
                idx = idx + 1
                continue 
            _428 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            idx = 0
            while idx < return_data.size:
                mem[_428 + idx + 68] = mem[_424 + idx + 32]
                require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
                idx = idx + 32
                continue 
            if ceil32(return_data.size) > return_data.size:
                mem[_428 + return_data.size + 68] = 0
            revert with memory
              from mem[64]
               len _428 + ceil32(return_data.size) + -mem[64] + 68
        mem[32] = 254
        stor254[('cd', 4)[1]] = 1
        _402 = mem[64]
        mem[mem[64]] = 32
        require ('cd', 4).length == ('cd', 4).length
        mem[mem[64] + 32] = ('cd', 4).length
        require ('cd', 4)[0] == ('cd', 4)[0]
        mem[mem[64] + 64] = ('cd', 4)[0]
        require ('cd', 4)[1] == ('cd', 4)[1]
        mem[mem[64] + 96] = ('cd', 4)[1]
        require ('cd', 4)[2] == ('cd', 4)[2]
        mem[mem[64] + 128] = ('cd', 4)[2]
        require ('cd', 4)[3] == ('cd', 4)[3]
        mem[mem[64] + 160] = ('cd', 4)[3]
        require ('cd', 4)[4] == uint8(('cd', 4)[4])
        mem[mem[64] + 192] = uint8(('cd', 4)[4])
        require ('cd', 4)[5] < calldata.size + -cd[4] - 35
        require cd[(('cd', 4)[5] + cd[4] + 4)] <= test266151307()
        require cd[4] + 4 <= calldata.size - (32 * cd[(('cd', 4)[5] + cd[4] + 4)])
        mem[mem[64] + 224] = 224
        mem[mem[64] + 256] = cd[(('cd', 4)[5] + cd[4] + 4)]
        idx = 0
        s = ('cd', 4)[5] + cd[4] + 36
        t = mem[64] + (32 * cd[(('cd', 4)[5] + cd[4] + 4)]) + 288
        u = mem[64] + 288
        while idx < cd[(('cd', 4)[5] + cd[4] + 4)]:
            mem[u] = t + -_402 - 288
            require cd[s] < calldata.size + -('cd', 4)[5] + -cd[4] - 163
            require cd[(cd[s] + ('cd', 4)[5] + cd[4] + 36)] == address(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 36)])
            mem[t] = address(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 36)])
            require cd[(cd[s] + ('cd', 4)[5] + cd[4] + 68)] == address(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 68)])
            mem[t + 32] = address(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 68)])
            require cd[(cd[s] + ('cd', 4)[5] + cd[4] + 100)] == cd[(cd[s] + ('cd', 4)[5] + cd[4] + 100)]
            mem[t + 64] = cd[(cd[s] + ('cd', 4)[5] + cd[4] + 100)]
            require cd[(cd[s] + ('cd', 4)[5] + cd[4] + 132)] < calldata.size + -cd[s] + -('cd', 4)[5] + -cd[4] - 67
            require cd[(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 132)] + cd[s] + ('cd', 4)[5] + cd[4] + 36)] <= test266151307()
            require cd[s] + ('cd', 4)[5] + cd[4] + 36 <= calldata.size - cd[(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 132)] + cd[s] + ('cd', 4)[5] + cd[4] + 36)]
            mem[t + 96] = 128
            mem[t + 128] = cd[(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 132)] + cd[s] + ('cd', 4)[5] + cd[4] + 36)]
            mem[t + 160 len cd[(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 132)] + cd[s] + ('cd', 4)[5] + cd[4] + 36)]] = call.data[cd[(cd[s] + ('cd', 4)[5] + cd[4] + 132)] + cd[s] + ('cd', 4)[5] + cd[4] + 68 len cd[(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 132)] + cd[s] + ('cd', 4)[5] + cd[4] + 36)]]
            mem[t + cd[(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 132)] + cd[s] + ('cd', 4)[5] + cd[4] + 36)] + 160] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(cd[(cd[s] + ('cd', 4)[5] + cd[4] + 132)] + cd[s] + ('cd', 4)[5] + cd[4] + 36)]) + 160
            u = u + 32
            continue 
        emit 0xd30f9c0c: mem[mem[64] len _402 + (193 * cd[(('cd', 4)[5] + cd[4] + 4)]) + -mem[64] + 288]
    stor151 = 1
}



}

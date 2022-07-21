contract main {




// =====================  Runtime code  =====================


#
#  - sub_7cd2bffc(?)
#  - sub_d8318ae5(?)
#  - _fallback()
#
address owner;
address sub_a1a227faAddress;
mapping of address sub_fbf5d763;
array of address sub_82665a8f;
mapping of uint8 stor4;
address signerAddress;
address feeCollectorAddress;
uint256 stor7;
address sub_457bfa2fAddress;

function signer() {
    return signerAddress
}

function sub_457bfa2f(?) {
    return sub_457bfa2fAddress
}

function sub_82665a8f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_82665a8f.length
    return sub_82665a8f[arg1]
}

function owner() {
    return owner
}

function sub_91ec04b5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == Mask(32, 224, arg2)
    return bool(stor4[arg1][arg2])
}

function sub_a1a227fa(?) {
    return sub_a1a227faAddress
}

function feeCollector() {
    return feeCollectorAddress
}

function sub_fbf5d763(?) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return sub_fbf5d763[arg1]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setSigner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    signerAddress = arg1
    emit SignerUpdated(signerAddress, arg1);
}

function sub_547cad12(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a1a227faAddress = address(arg1)
    emit 0x3f8223bc: address(arg1)
}

function sub_5b5a66a7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_457bfa2fAddress = address(arg1)
    emit 0xb878cd71: address(arg1)
}

function setFeeCollector(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeCollectorAddress = arg1
    emit 0x5d16ad41: feeCollectorAddress, arg1
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

function sub_9c649fdf(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == uint64(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == address(arg4)
    if sub_a1a227faAddress != msg.sender:
        revert with 0, 'caller is not message bus'
    else:
        return 0
}

function sub_675df759(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == Mask(32, 224, arg2)
    require arg3 == bool(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(arg3) == bool(stor4[address(arg1)][Mask(32, 224, arg2)]):
        revert with 0, 'nop'
    stor4[address(arg1)][Mask(32, 224, arg2)] = uint8(bool(arg3))
    emit 0x5e20184b: address(arg1), Mask(32, 224, arg2), bool(arg3)
}

function sub_c5bccca3(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fbf5d763[Mask(32, 224, sha3(arg1[all]))] = address(arg2)
    sub_82665a8f.length++
    sub_82665a8f[sub_82665a8f.length] = address(arg2)
    emit 0x58ddcdb4: Mask(32, 224, sha3(arg1[all])), address(arg2)
}

function sub_efcfd8f5(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    if feeCollectorAddress != msg.sender:
        revert with 0, 'not fee collector'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = this.address
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _72 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _73 = mem[_72]
        require mem[_72] == mem[_72]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        _74 = mem[64]
        mem[mem[64] + 36] = address(cd[36])
        mem[mem[64] + 68] = _73
        _75 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_75 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_75 + 36 len 28]
        mem[64] = _74 + 164
        mem[_74 + 100] = 32
        mem[_74 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])):
            revert with 0, 'Address: call to non-contract'
        _81 = mem[_75]
        s = 0
        while s < _81:
            mem[s + _74 + 164] = mem[s + _75 + 32]
            s = s + 32
            continue 
        if ceil32(_81) > _81:
            mem[_81 + _74 + 164] = 0
        call address(cd[((32 * idx) + cd[4] + 36)]).mem[_74 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_74 + 168 len _81 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_74 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_74 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _74 + 232] = mem[idx + _74 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_74 + 232]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _74 + ceil32(return_data.size) + 165
            mem[_74 + 164] = return_data.size
            mem[_74 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_74 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_74 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _74 + ceil32(return_data.size) + 233] = mem[idx + _74 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_74 + ceil32(return_data.size) + 233]
            if return_data.size:
                require return_data.size >= 32
                require mem[_74 + 196] == bool(mem[_74 + 196])
                if not mem[_74 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_0bcb4982(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    require cd[100] == address(cd[100])
    if sub_a1a227faAddress != msg.sender:
        revert with 0, 'caller is not message bus'
    if stor7 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor7 = 2
    require ('cd', 68).length >= 32
    require ('cd', 68)[0] <= test266151307()
    require ('cd', 68).length - ('cd', 68)[0] >= 192
    require cd[(cd[68] + ('cd', 68)[0] + 36)] == cd[(cd[68] + ('cd', 68)[0] + 36)]
    mem[96] = cd[(cd[68] + ('cd', 68)[0] + 36)]
    require cd[(cd[68] + ('cd', 68)[0] + 68)] <= test266151307()
    require cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + 67 < cd[68] + ('cd', 68).length + 36
    if cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + 36)] > test266151307():
        revert with 0, 65
    if floor32(cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + 36)]) + 289 > test266151307() or floor32(cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + 36)]) + 289 < 288:
        revert with 0, 65
    mem[64] = floor32(cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + 36)]) + 289
    mem[288] = cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + 36)]
    require ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + (32 * cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + 36)]) + 68 <= ('cd', 68).length + 36
    idx = cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + 68
    s = 320
    while idx < cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + (32 * cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + 36)]) + 68:
        require cd[idx] <= test266151307()
        require ('cd', 68).length + -('cd', 68)[0] + -cd[(cd[68] + ('cd', 68)[0] + 68)] + -cd[idx] - 32 >= 64
        _121 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + 68)] == address(cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + 68)])
        mem[_121] = cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + 68)]
        require cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + 100)] <= test266151307()
        require cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + 100)] + 99 < cd[68] + ('cd', 68).length + 36
        if cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + 100)] + 68)] > test266151307():
            revert with 0, 65
        _122 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + 100)] + 68)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + 100)] + 68)])) + 1 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + 100)] + 68)])) + 1
        mem[_122] = cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + 100)] + 68)]
        require ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + 100)] + cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + 100)] + 68)] + 100 <= ('cd', 68).length + 36
        mem[_122 + 32 len cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + 100)] + 68)]] = call.data[cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + 100)] + 100 len cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + 100)] + 68)]]
        mem[cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + cd[(cd[68] + ('cd', 68)[0] + cd[(cd[68] + ('cd', 68)[0] + 68)] + cd[idx] + 100)] + 68)] + _122 + 32] = 0
        mem[_121 + 32] = _122
        mem[s] = _121
        idx = idx + 32
        s = s + 32
        continue 
    mem[128] = 288
    require cd[(cd[68] + ('cd', 68)[0] + 100)] == address(cd[(cd[68] + ('cd', 68)[0] + 100)])
    mem[160] = cd[(cd[68] + ('cd', 68)[0] + 100)]
    require cd[(cd[68] + ('cd', 68)[0] + 132)] == bool(cd[(cd[68] + ('cd', 68)[0] + 132)])
    mem[192] = cd[(cd[68] + ('cd', 68)[0] + 132)]
    require cd[(cd[68] + ('cd', 68)[0] + 164)] == cd[(cd[68] + ('cd', 68)[0] + 164)]
    mem[224] = cd[(cd[68] + ('cd', 68)[0] + 164)]
    require cd[(cd[68] + ('cd', 68)[0] + 196)] == bool(cd[(cd[68] + ('cd', 68)[0] + 196)])
    mem[256] = cd[(cd[68] + ('cd', 68)[0] + 196)]
    _124 = mem[64]
    mem[mem[64] + 36] = address(cd[(cd[68] + ('cd', 68)[0] + 100)])
    mem[mem[64] + 68] = cd[36]
    _125 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_124 + 100] = 32
    mem[_124 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(cd[4])):
        revert with 0, 'Address: call to non-contract'
    _131 = mem[_125]
    mem[_124 + 164 len ceil32(mem[_125])] = mem[_125 + 32 len ceil32(mem[_125])]
    if ceil32(_131) > _131:
        mem[_131 + _124 + 164] = 0
    call address(cd[4]) with:
         gas gas_remaining wei
        args mem[_124 + 168 len _131 - 4]
    if return_data.size:
        mem[_124 + 164] = return_data.size
        mem[_124 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_124 + 196] == bool(mem[_124 + 196])
            if not mem[_124 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        require not mem[96]
        mem[_124 + 164] = mem[96]
        mem[_124 + 196] = 0
        mem[_124 + 228] = cd[36]
        mem[_124 + 260] = address(cd[4])
        mem[_124 + 292] = cd[(cd[68] + ('cd', 68)[0] + 164)]
        mem[_124 + 324] = 2
    emit 0x83fb878b: mem[96], 0, cd[36], address(cd[4]), cd[(cd[68] + ('cd', 68)[0] + 164)], 2
    stor7 = 1
    return 1
}

function sub_5ab7afc6(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == uint64(arg4)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 > test266151307() or ceil32(ceil32(arg5.length)) + 97 < 96:
        revert with 0, 65
    mem[96] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    require arg6 == address(arg6)
    if sub_a1a227faAddress != msg.sender:
        revert with 0, 'caller is not message bus'
    if stor7 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor7 = 2
    require arg5.length >= 32
    _5 = mem[128]
    require mem[128] <= test266151307()
    require arg5.length - mem[128] >= 192
    if not bool(ceil32(ceil32(arg5.length)) + 289 <= test266151307()):
        revert with 0, 65
    require mem[mem[128] + 128] == mem[mem[128] + 128]
    mem[ceil32(ceil32(arg5.length)) + 97] = mem[mem[128] + 128]
    _10 = mem[_5 + 160]
    require mem[_5 + 160] <= test266151307()
    require _5 + mem[_5 + 160] + 159 < arg5.length + 128
    _11 = mem[_5 + mem[_5 + 160] + 128]
    if mem[_5 + mem[_5 + 160] + 128] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + floor32(mem[_5 + mem[_5 + 160] + 128]) + 290 > test266151307() or floor32(mem[_5 + mem[_5 + 160] + 128]) + 290 < 289:
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg5.length)) + floor32(mem[_5 + mem[_5 + 160] + 128]) + 290
    mem[ceil32(ceil32(arg5.length)) + 289] = _11
    require _5 + _10 + (32 * _11) + 64 <= arg5.length + 32
    idx = _5 + _10 + 160
    s = ceil32(ceil32(arg5.length)) + 321
    while idx < _5 + _10 + (32 * _11) + 160:
        _113 = mem[idx]
        require mem[idx] <= test266151307()
        require arg5.length + -_5 + -_10 + -mem[idx] - 32 >= 64
        _115 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 64
        require mem[_5 + _10 + _113 + 160] == mem[_5 + _10 + _113 + 172 len 20]
        mem[_115] = mem[_5 + _10 + _113 + 160]
        _119 = mem[_5 + _10 + _113 + 192]
        require mem[_5 + _10 + _113 + 192] <= test266151307()
        require _5 + _10 + _113 + mem[_5 + _10 + _113 + 192] + 191 < arg5.length + 128
        _120 = mem[_5 + _10 + _113 + mem[_5 + _10 + _113 + 192] + 160]
        if mem[_5 + _10 + _113 + mem[_5 + _10 + _113 + 192] + 160] > test266151307():
            revert with 0, 65
        _122 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_5 + _10 + _113 + mem[_5 + _10 + _113 + 192] + 160])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_5 + _10 + _113 + mem[_5 + _10 + _113 + 192] + 160])) + 1 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_5 + _10 + _113 + mem[_5 + _10 + _113 + 192] + 160])) + 1
        mem[_122] = _120
        require _5 + _10 + _113 + _119 + _120 + 96 <= arg5.length + 32
        t = 0
        while t < _120:
            mem[t + _122 + 32] = mem[t + _5 + _10 + _113 + _119 + 192]
            t = t + 32
            continue 
        if ceil32(_120) > _120:
            mem[_120 + _122 + 32] = 0
        mem[_115 + 32] = _122
        mem[s] = _115
        idx = idx + 32
        s = s + 32
        continue 
    mem[ceil32(ceil32(arg5.length)) + 129] = ceil32(ceil32(arg5.length)) + 289
    require mem[_5 + 192] == mem[_5 + 204 len 20]
    mem[ceil32(ceil32(arg5.length)) + 161] = mem[_5 + 192]
    require mem[_5 + 224] == bool(mem[_5 + 224])
    mem[ceil32(ceil32(arg5.length)) + 193] = mem[_5 + 224]
    require mem[_5 + 256] == mem[_5 + 256]
    mem[ceil32(ceil32(arg5.length)) + 225] = mem[_5 + 256]
    require mem[_5 + 288] == bool(mem[_5 + 288])
    mem[ceil32(ceil32(arg5.length)) + 257] = mem[_5 + 288]
    _123 = mem[ceil32(ceil32(arg5.length)) + 225]
    if arg3 < mem[ceil32(ceil32(arg5.length)) + 225]:
        revert with 0, 17
    _126 = mem[64]
    mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + 173 len 20]
    mem[mem[64] + 68] = arg3 - _123
    _127 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_126 + 100] = 32
    mem[_126 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg2)):
        revert with 0, 'Address: call to non-contract'
    _133 = mem[_127]
    mem[_126 + 164 len ceil32(mem[_127])] = mem[_127 + 32 len ceil32(mem[_127])]
    if ceil32(_133) <= _133:
        call address(arg2) with:
             gas gas_remaining wei
            args mem[_126 + 168 len _133 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                _272 = mem[ceil32(ceil32(arg5.length)) + 225]
                mem[_126 + 164] = mem[ceil32(ceil32(arg5.length)) + 97]
                emit 0x83fb878b: mem[_126 + 164], 0, arg3 - _123, address(arg2), _272, 2
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                _300 = mem[ceil32(ceil32(arg5.length)) + 225]
                mem[_126 + 164] = mem[ceil32(ceil32(arg5.length)) + 97]
                emit 0x83fb878b: mem[_126 + 164], 0, arg3 - _123, address(arg2), _300, 2
        else:
            mem[_126 + 164] = return_data.size
            mem[_126 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                _276 = mem[ceil32(ceil32(arg5.length)) + 225]
                mem[_126 + ceil32(return_data.size) + 165] = mem[ceil32(ceil32(arg5.length)) + 97]
                emit 0x83fb878b: mem[_126 + ceil32(return_data.size) + 165], 0, arg3 - _123, address(arg2), _276, 2
            else:
                require return_data.size >= 32
                require mem[_126 + 196] == bool(mem[_126 + 196])
                if not mem[_126 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                _303 = mem[ceil32(ceil32(arg5.length)) + 225]
                mem[_126 + ceil32(return_data.size) + 165] = mem[ceil32(ceil32(arg5.length)) + 97]
                emit 0x83fb878b: mem[_126 + ceil32(return_data.size) + 165], 0, arg3 - _123, address(arg2), _303, 2
    else:
        mem[_133 + _126 + 164] = 0
        call address(arg2) with:
             gas gas_remaining wei
            args mem[_126 + 168 len _133 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                _280 = mem[ceil32(ceil32(arg5.length)) + 225]
                mem[_126 + 164] = mem[ceil32(ceil32(arg5.length)) + 97]
                emit 0x83fb878b: mem[_126 + 164], 0, arg3 - _123, address(arg2), _280, 2
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                _306 = mem[ceil32(ceil32(arg5.length)) + 225]
                mem[_126 + 164] = mem[ceil32(ceil32(arg5.length)) + 97]
                emit 0x83fb878b: mem[_126 + 164], 0, arg3 - _123, address(arg2), _306, 2
        else:
            mem[_126 + 164] = return_data.size
            mem[_126 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                _284 = mem[ceil32(ceil32(arg5.length)) + 225]
                mem[_126 + ceil32(return_data.size) + 165] = mem[ceil32(ceil32(arg5.length)) + 97]
                emit 0x83fb878b: mem[_126 + ceil32(return_data.size) + 165], 0, arg3 - _123, address(arg2), _284, 2
            else:
                require return_data.size >= 32
                require mem[_126 + 196] == bool(mem[_126 + 196])
                if not mem[_126 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                _309 = mem[ceil32(ceil32(arg5.length)) + 225]
                mem[_126 + ceil32(return_data.size) + 165] = mem[ceil32(ceil32(arg5.length)) + 97]
                emit 0x83fb878b: mem[_126 + ceil32(return_data.size) + 165], 0, arg3 - _123, address(arg2), _309, 2
    stor7 = 1
    return 1
}



}

contract main {




// =====================  Runtime code  =====================


#
#  - sub_20be95f2(?)
#  - sub_385bdd2a(?)
#  - sub_94748d8d(?)
#  - sub_9853cc3a(?)
#  - sub_99985ff8(?)
#  - sub_b3353072(?)
#  - sub_ce35dd9a(?)
#  - sub_e90ad51c(?)
#  - _fallback()
#
address owner;
address sub_a1a227faAddress;
mapping of uint8 stor2;
mapping of uint256 sub_edffe8e6;
address sub_457bfa2fAddress;
uint256 minSwapAmount;
uint256 sub_8620e7fa;
uint8 decimals;

function decimals() {
    return decimals
}

function minSwapAmount() {
    return minSwapAmount
}

function sub_457bfa2f(?) {
    return sub_457bfa2fAddress
}

function sub_8620e7fa(?) {
    return sub_8620e7fa
}

function owner() {
    return owner
}

function sub_a1a227fa(?) {
    return sub_a1a227faAddress
}

function sub_edffe8e6(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    return sub_edffe8e6[arg1]
}

function sub_e469020b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < 5 * 10^6
    sub_8620e7fa = arg1
}

function sub_98f536dc(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    decimals = uint8(arg1)
}

function sub_1efe4063(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint64(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_edffe8e6[arg1 << 192] = arg2
}

function sub_5b5a66a7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_457bfa2fAddress = address(arg1)
}

function sub_547cad12(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a1a227faAddress = address(arg1)
    emit 0x3f8223bc: address(arg1)
}

function sub_d9b796de(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = uint8(bool(arg2))
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

function sub_1599d265(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == uint64(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if sub_a1a227faAddress != msg.sender:
        revert with 0, 'caller is not message bus'
    else:
        return 0
}

function sweepTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setMinSwapAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not decimals:
        if arg1 and 1 > -1 / arg1:
            revert with 0, 17
        minSwapAmount = arg1
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if arg1 and 10^decimals > -1 / arg1:
                revert with 0, 17
            minSwapAmount = arg1 * 10^decimals
        else:
            s = 10
            t = 1
            idx = decimals
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg1 and s * t > -1 / arg1:
                revert with 0, 17
            minSwapAmount = arg1 * s * t
}

function sub_f00f39ce(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == uint64(arg4)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    if sub_a1a227faAddress != msg.sender:
        revert with 0, 'caller is not message bus'
    require arg5.length >= 32
    _5 = mem[128]
    require mem[128] <= test266151307()
    require arg5.length - mem[128] >= 128
    if not bool(ceil32(ceil32(arg5.length)) + 225 <= test266151307()):
        revert with 0, 65
    _7 = mem[mem[128] + 128]
    require mem[mem[128] + 128] <= test266151307()
    require arg5.length - mem[128] - mem[mem[128] + 128] >= 224
    if not bool(ceil32(ceil32(arg5.length)) + 449 <= test266151307()):
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg5.length)) + 449
    require mem[mem[128] + mem[mem[128] + 128] + 128] == mem[mem[128] + mem[mem[128] + 128] + 140 len 20]
    mem[ceil32(ceil32(arg5.length)) + 225] = mem[mem[128] + mem[mem[128] + 128] + 128]
    _10 = mem[mem[128] + _7 + 160]
    require mem[mem[128] + _7 + 160] <= test266151307()
    require mem[128] + _7 + mem[mem[128] + _7 + 160] + 159 < arg5.length + 128
    _11 = mem[mem[128] + _7 + mem[mem[128] + _7 + 160] + 128]
    if mem[mem[128] + _7 + mem[mem[128] + _7 + 160] + 128] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[128] + _7 + mem[mem[128] + _7 + 160] + 128]) + 450 < 449 or ceil32(ceil32(arg5.length)) + ceil32(32 * mem[mem[128] + _7 + mem[mem[128] + _7 + 160] + 128]) + 450 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg5.length)) + ceil32(32 * mem[mem[128] + _7 + mem[mem[128] + _7 + 160] + 128]) + 450
    mem[ceil32(ceil32(arg5.length)) + 449] = mem[mem[128] + _7 + mem[mem[128] + _7 + 160] + 128]
    require mem[128] + _7 + _10 + (32 * _11) + 64 <= arg5.length + 32
    idx = mem[128] + _7 + _10 + 160
    s = ceil32(ceil32(arg5.length)) + 481
    while idx < mem[128] + _7 + _10 + (32 * _11) + 160:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[ceil32(ceil32(arg5.length)) + 257] = ceil32(ceil32(arg5.length)) + 449
    _1697 = mem[mem[128] + _7 + 192]
    require mem[mem[128] + _7 + 192] <= test266151307()
    require mem[128] + _7 + mem[mem[128] + _7 + 192] + 159 < arg5.length + 128
    _1698 = mem[mem[128] + _7 + mem[mem[128] + _7 + 192] + 128]
    if mem[mem[128] + _7 + mem[mem[128] + _7 + 192] + 128] > test266151307():
        revert with 0, 65
    _1699 = mem[64]
    if mem[64] + ceil32(ceil32(mem[mem[128] + _7 + mem[mem[128] + _7 + 192] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[128] + _7 + mem[mem[128] + _7 + 192] + 128])) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(mem[mem[128] + _7 + mem[mem[128] + _7 + 192] + 128])) + 1
    mem[_1699] = mem[mem[128] + _7 + mem[mem[128] + _7 + 192] + 128]
    require _5 + _7 + _1697 + _1698 + 64 <= arg5.length + 32
    mem[_1699 + 32 len ceil32(_1698)] = mem[_5 + _7 + _1697 + 160 len ceil32(_1698)]
    if ceil32(_1698) <= _1698:
        mem[ceil32(ceil32(arg5.length)) + 289] = _1699
        mem[ceil32(ceil32(arg5.length)) + 321] = mem[_5 + _7 + 224]
        _3381 = mem[_5 + _7 + 256]
        require mem[_5 + _7 + 256] <= test266151307()
        require _5 + _7 + mem[_5 + _7 + 256] + 159 < arg5.length + 128
        _3384 = mem[_5 + _7 + mem[_5 + _7 + 256] + 128]
        if mem[_5 + _7 + mem[_5 + _7 + 256] + 128] > test266151307():
            revert with 0, 65
        _3386 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_5 + _7 + mem[_5 + _7 + 256] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_5 + _7 + mem[_5 + _7 + 256] + 128])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_5 + _7 + mem[_5 + _7 + 256] + 128])) + 1
        mem[_3386] = mem[_5 + _7 + mem[_5 + _7 + 256] + 128]
        require _5 + _7 + _3381 + _3384 + 64 <= arg5.length + 32
        mem[_3386 + 32 len ceil32(_3384)] = mem[_5 + _7 + _3381 + 160 len ceil32(_3384)]
        if ceil32(_3384) <= _3384:
            mem[ceil32(ceil32(arg5.length)) + 353] = _3386
            mem[ceil32(ceil32(arg5.length)) + 385] = mem[_5 + _7 + 288]
            require mem[_5 + _7 + 320] < 3
            mem[ceil32(ceil32(arg5.length)) + 417] = mem[_5 + _7 + 320]
            mem[ceil32(ceil32(arg5.length)) + 97] = ceil32(ceil32(arg5.length)) + 225
            require mem[_5 + 160] == mem[_5 + 172 len 20]
            mem[ceil32(ceil32(arg5.length)) + 129] = mem[_5 + 160]
            require mem[_5 + 192] == mem[_5 + 216 len 8]
            mem[ceil32(ceil32(arg5.length)) + 161] = mem[_5 + 192]
            require mem[_5 + 224] == bool(mem[_5 + 224])
            mem[ceil32(ceil32(arg5.length)) + 193] = mem[_5 + 224]
            _5084 = mem[64]
            mem[mem[64] + 32] = address(mem[ceil32(ceil32(arg5.length)) + 129])
            mem[mem[64] + 52] = arg4 << 192
            mem[mem[64] + 60] = chainid << 192
            mem[mem[64] + 68 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, ceil32(ceil32(arg5.length)) + 225) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
            if ceil32(arg5.length) <= arg5.length:
                _6732 = mem[64]
                mem[mem[64]] = arg5.length + 36
                mem[64] = arg5.length + mem[64] + 68
                _6734 = sha3(mem[_6732 + 32 len mem[_6732]])
                if mem[ceil32(ceil32(arg5.length)) + 417] > 2:
                    revert with 0, 33
                if mem[ceil32(ceil32(arg5.length)) + 417] == 2:
                    _6777 = mem[_1699 + 32]
                    mem[arg5.length + _5084 + 104] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                    mem[arg5.length + _5084 + 136] = arg3
                    mem[arg5.length + _5084 + 68] = 68
                    mem[arg5.length + _5084 + 100 len 4] = unknown_0xa9059cbb(?????)
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(Mask(64, 96, _6777) >> 96):
                        revert with 0, 'Address: call to non-contract'
                    mem[arg5.length + _5084 + 232 len 96] = 0, mem[arg5.length + _5084 + 104], arg3, 0
                    call Mask(64, 96, _6777) >> 96 with:
                       funct Mask(32, 224, 0, mem[arg5.length + _5084 + 104], arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, mem[arg5.length + _5084 + 104], arg3, 0) << 288)
                else:
                    if 0 >= mem[ceil32(ceil32(arg5.length)) + 449]:
                        revert with 0, 50
                    _6828 = mem[ceil32(ceil32(arg5.length)) + 481]
                    mem[arg5.length + _5084 + 104] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                    mem[arg5.length + _5084 + 136] = arg3
                    mem[arg5.length + _5084 + 68] = 68
                    mem[arg5.length + _5084 + 100 len 4] = unknown_0xa9059cbb(?????)
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_6828)):
                        revert with 0, 'Address: call to non-contract'
                    mem[arg5.length + _5084 + 232 len 96] = 0, mem[arg5.length + _5084 + 104], arg3, 0
                    call address(_6828) with:
                       funct Mask(32, 224, 0, mem[arg5.length + _5084 + 104], arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, mem[arg5.length + _5084 + 104], arg3, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg5.length:
                            revert with arg5[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg5.length:
                        require arg5.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[arg5.length + _5084 + 264 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[arg5.length + _5084 + 264] == bool(mem[arg5.length + _5084 + 264])
                        if not mem[arg5.length + _5084 + 264]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0xccbb695d: _6734, 0, 2
            else:
                mem[arg5.length + mem[64] + 68] = 0
                _6735 = mem[64]
                mem[mem[64]] = arg5.length + 36
                mem[64] = arg5.length + mem[64] + 68
                _6737 = sha3(mem[_6735 + 32 len mem[_6735]])
                if mem[ceil32(ceil32(arg5.length)) + 417] > 2:
                    revert with 0, 33
                if mem[ceil32(ceil32(arg5.length)) + 417] == 2:
                    _6784 = mem[_1699 + 32]
                    mem[arg5.length + _5084 + 104] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                    mem[arg5.length + _5084 + 136] = arg3
                    mem[arg5.length + _5084 + 68] = 68
                    mem[arg5.length + _5084 + 100 len 4] = unknown_0xa9059cbb(?????)
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(Mask(64, 96, _6784) >> 96):
                        revert with 0, 'Address: call to non-contract'
                    mem[arg5.length + _5084 + 232 len 96] = 0, mem[arg5.length + _5084 + 104], arg3, 0
                    call Mask(64, 96, _6784) >> 96 with:
                       funct Mask(32, 224, 0, mem[arg5.length + _5084 + 104], arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, mem[arg5.length + _5084 + 104], arg3, 0) << 288)
                else:
                    if 0 >= mem[ceil32(ceil32(arg5.length)) + 449]:
                        revert with 0, 50
                    _6830 = mem[ceil32(ceil32(arg5.length)) + 481]
                    mem[arg5.length + _5084 + 104] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                    mem[arg5.length + _5084 + 136] = arg3
                    mem[arg5.length + _5084 + 68] = 68
                    mem[arg5.length + _5084 + 100 len 4] = unknown_0xa9059cbb(?????)
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_6830)):
                        revert with 0, 'Address: call to non-contract'
                    mem[arg5.length + _5084 + 232 len 96] = 0, mem[arg5.length + _5084 + 104], arg3, 0
                    call address(_6830) with:
                       funct Mask(32, 224, 0, mem[arg5.length + _5084 + 104], arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, mem[arg5.length + _5084 + 104], arg3, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg5.length:
                            revert with arg5[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg5.length:
                        require arg5.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[arg5.length + _5084 + 264 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[arg5.length + _5084 + 264] == bool(mem[arg5.length + _5084 + 264])
                        if not mem[arg5.length + _5084 + 264]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0xccbb695d: _6737, 0, 2
        else:
            mem[_3384 + _3386 + 32] = 0
            mem[ceil32(ceil32(arg5.length)) + 353] = _3386
            mem[ceil32(ceil32(arg5.length)) + 385] = mem[_5 + _7 + 288]
            require mem[_5 + _7 + 320] < 3
            mem[ceil32(ceil32(arg5.length)) + 417] = mem[_5 + _7 + 320]
            mem[ceil32(ceil32(arg5.length)) + 97] = ceil32(ceil32(arg5.length)) + 225
            require mem[_5 + 160] == mem[_5 + 172 len 20]
            mem[ceil32(ceil32(arg5.length)) + 129] = mem[_5 + 160]
            require mem[_5 + 192] == mem[_5 + 216 len 8]
            mem[ceil32(ceil32(arg5.length)) + 161] = mem[_5 + 192]
            require mem[_5 + 224] == bool(mem[_5 + 224])
            mem[ceil32(ceil32(arg5.length)) + 193] = mem[_5 + 224]
            _5085 = mem[64]
            mem[mem[64] + 32] = address(mem[ceil32(ceil32(arg5.length)) + 129])
            mem[mem[64] + 52] = arg4 << 192
            mem[mem[64] + 60] = chainid << 192
            mem[mem[64] + 68 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, ceil32(ceil32(arg5.length)) + 225) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
            if ceil32(arg5.length) <= arg5.length:
                _6738 = mem[64]
                mem[mem[64]] = arg5.length + 36
                mem[64] = arg5.length + mem[64] + 68
                _6740 = sha3(mem[_6738 + 32 len mem[_6738]])
                if mem[ceil32(ceil32(arg5.length)) + 417] > 2:
                    revert with 0, 33
                if mem[ceil32(ceil32(arg5.length)) + 417] == 2:
                    _6791 = mem[_1699 + 32]
                    mem[arg5.length + _5085 + 104] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                    mem[arg5.length + _5085 + 136] = arg3
                    mem[arg5.length + _5085 + 68] = 68
                    mem[arg5.length + _5085 + 100 len 4] = unknown_0xa9059cbb(?????)
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(Mask(64, 96, _6791) >> 96):
                        revert with 0, 'Address: call to non-contract'
                    mem[arg5.length + _5085 + 232 len 96] = 0, mem[arg5.length + _5085 + 104], arg3, 0
                    call Mask(64, 96, _6791) >> 96 with:
                       funct Mask(32, 224, 0, mem[arg5.length + _5085 + 104], arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, mem[arg5.length + _5085 + 104], arg3, 0) << 288)
                else:
                    if 0 >= mem[ceil32(ceil32(arg5.length)) + 449]:
                        revert with 0, 50
                    _6832 = mem[ceil32(ceil32(arg5.length)) + 481]
                    mem[arg5.length + _5085 + 104] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                    mem[arg5.length + _5085 + 136] = arg3
                    mem[arg5.length + _5085 + 68] = 68
                    mem[arg5.length + _5085 + 100 len 4] = unknown_0xa9059cbb(?????)
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_6832)):
                        revert with 0, 'Address: call to non-contract'
                    mem[arg5.length + _5085 + 232 len 96] = 0, mem[arg5.length + _5085 + 104], arg3, 0
                    call address(_6832) with:
                       funct Mask(32, 224, 0, mem[arg5.length + _5085 + 104], arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, mem[arg5.length + _5085 + 104], arg3, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg5.length:
                            revert with arg5[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg5.length:
                        require arg5.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[arg5.length + _5085 + 264 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[arg5.length + _5085 + 264] == bool(mem[arg5.length + _5085 + 264])
                        if not mem[arg5.length + _5085 + 264]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0xccbb695d: _6740, 0, 2
            else:
                mem[arg5.length + mem[64] + 68] = 0
                _6741 = mem[64]
                mem[mem[64]] = arg5.length + 36
                mem[64] = arg5.length + mem[64] + 68
                _6743 = sha3(mem[_6741 + 32 len mem[_6741]])
                if mem[ceil32(ceil32(arg5.length)) + 417] > 2:
                    revert with 0, 33
                if mem[ceil32(ceil32(arg5.length)) + 417] == 2:
                    _6798 = mem[_1699 + 32]
                    mem[arg5.length + _5085 + 104] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                    mem[arg5.length + _5085 + 136] = arg3
                    mem[arg5.length + _5085 + 68] = 68
                    mem[arg5.length + _5085 + 100 len 4] = unknown_0xa9059cbb(?????)
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(Mask(64, 96, _6798) >> 96):
                        revert with 0, 'Address: call to non-contract'
                    mem[arg5.length + _5085 + 232 len 96] = 0, mem[arg5.length + _5085 + 104], arg3, 0
                    call Mask(64, 96, _6798) >> 96 with:
                       funct Mask(32, 224, 0, mem[arg5.length + _5085 + 104], arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, mem[arg5.length + _5085 + 104], arg3, 0) << 288)
                else:
                    if 0 >= mem[ceil32(ceil32(arg5.length)) + 449]:
                        revert with 0, 50
                    _6834 = mem[ceil32(ceil32(arg5.length)) + 481]
                    mem[arg5.length + _5085 + 104] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                    mem[arg5.length + _5085 + 136] = arg3
                    mem[arg5.length + _5085 + 68] = 68
                    mem[arg5.length + _5085 + 100 len 4] = unknown_0xa9059cbb(?????)
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_6834)):
                        revert with 0, 'Address: call to non-contract'
                    mem[arg5.length + _5085 + 232 len 96] = 0, mem[arg5.length + _5085 + 104], arg3, 0
                    call address(_6834) with:
                       funct Mask(32, 224, 0, mem[arg5.length + _5085 + 104], arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, mem[arg5.length + _5085 + 104], arg3, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg5.length:
                            revert with arg5[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg5.length:
                        require arg5.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[arg5.length + _5085 + 264 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[arg5.length + _5085 + 264] == bool(mem[arg5.length + _5085 + 264])
                        if not mem[arg5.length + _5085 + 264]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0xccbb695d: _6743, 0, 2
    else:
        mem[_1698 + _1699 + 32] = 0
        mem[ceil32(ceil32(arg5.length)) + 289] = _1699
        mem[ceil32(ceil32(arg5.length)) + 321] = mem[_5 + _7 + 224]
        _3383 = mem[_5 + _7 + 256]
        require mem[_5 + _7 + 256] <= test266151307()
        require _5 + _7 + mem[_5 + _7 + 256] + 159 < arg5.length + 128
        _3385 = mem[_5 + _7 + mem[_5 + _7 + 256] + 128]
        if mem[_5 + _7 + mem[_5 + _7 + 256] + 128] > test266151307():
            revert with 0, 65
        _3387 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_5 + _7 + mem[_5 + _7 + 256] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_5 + _7 + mem[_5 + _7 + 256] + 128])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_5 + _7 + mem[_5 + _7 + 256] + 128])) + 1
        mem[_3387] = mem[_5 + _7 + mem[_5 + _7 + 256] + 128]
        require _5 + _7 + _3383 + _3385 + 64 <= arg5.length + 32
        mem[_3387 + 32 len ceil32(_3385)] = mem[_5 + _7 + _3383 + 160 len ceil32(_3385)]
        if ceil32(_3385) <= _3385:
            mem[ceil32(ceil32(arg5.length)) + 353] = _3387
            mem[ceil32(ceil32(arg5.length)) + 385] = mem[_5 + _7 + 288]
            require mem[_5 + _7 + 320] < 3
            mem[ceil32(ceil32(arg5.length)) + 417] = mem[_5 + _7 + 320]
            mem[ceil32(ceil32(arg5.length)) + 97] = ceil32(ceil32(arg5.length)) + 225
            require mem[_5 + 160] == mem[_5 + 172 len 20]
            mem[ceil32(ceil32(arg5.length)) + 129] = mem[_5 + 160]
            require mem[_5 + 192] == mem[_5 + 216 len 8]
            mem[ceil32(ceil32(arg5.length)) + 161] = mem[_5 + 192]
            require mem[_5 + 224] == bool(mem[_5 + 224])
            mem[ceil32(ceil32(arg5.length)) + 193] = mem[_5 + 224]
            _5086 = mem[64]
            mem[mem[64] + 32] = address(mem[ceil32(ceil32(arg5.length)) + 129])
            mem[mem[64] + 52] = arg4 << 192
            mem[mem[64] + 60] = chainid << 192
            mem[mem[64] + 68 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, ceil32(ceil32(arg5.length)) + 225) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
            if ceil32(arg5.length) <= arg5.length:
                _6744 = mem[64]
                mem[mem[64]] = arg5.length + 36
                mem[64] = arg5.length + mem[64] + 68
                _6746 = sha3(mem[_6744 + 32 len mem[_6744]])
                if mem[ceil32(ceil32(arg5.length)) + 417] > 2:
                    revert with 0, 33
                if mem[ceil32(ceil32(arg5.length)) + 417] == 2:
                    _6805 = mem[_1699 + 32]
                    mem[arg5.length + _5086 + 104] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                    mem[arg5.length + _5086 + 136] = arg3
                    mem[arg5.length + _5086 + 68] = 68
                    mem[arg5.length + _5086 + 100 len 4] = unknown_0xa9059cbb(?????)
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(Mask(64, 96, _6805) >> 96):
                        revert with 0, 'Address: call to non-contract'
                    mem[arg5.length + _5086 + 232 len 96] = 0, mem[arg5.length + _5086 + 104], arg3, 0
                    call Mask(64, 96, _6805) >> 96 with:
                       funct Mask(32, 224, 0, mem[arg5.length + _5086 + 104], arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, mem[arg5.length + _5086 + 104], arg3, 0) << 288)
                else:
                    if 0 >= mem[ceil32(ceil32(arg5.length)) + 449]:
                        revert with 0, 50
                    _6836 = mem[ceil32(ceil32(arg5.length)) + 481]
                    mem[arg5.length + _5086 + 104] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                    mem[arg5.length + _5086 + 136] = arg3
                    mem[arg5.length + _5086 + 68] = 68
                    mem[arg5.length + _5086 + 100 len 4] = unknown_0xa9059cbb(?????)
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_6836)):
                        revert with 0, 'Address: call to non-contract'
                    mem[arg5.length + _5086 + 232 len 96] = 0, mem[arg5.length + _5086 + 104], arg3, 0
                    call address(_6836) with:
                       funct Mask(32, 224, 0, mem[arg5.length + _5086 + 104], arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, mem[arg5.length + _5086 + 104], arg3, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg5.length:
                            revert with arg5[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg5.length:
                        require arg5.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[arg5.length + _5086 + 264 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[arg5.length + _5086 + 264] == bool(mem[arg5.length + _5086 + 264])
                        if not mem[arg5.length + _5086 + 264]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0xccbb695d: _6746, 0, 2
            else:
                mem[arg5.length + mem[64] + 68] = 0
                _6747 = mem[64]
                mem[mem[64]] = arg5.length + 36
                mem[64] = arg5.length + mem[64] + 68
                _6749 = sha3(mem[_6747 + 32 len mem[_6747]])
                if mem[ceil32(ceil32(arg5.length)) + 417] > 2:
                    revert with 0, 33
                if mem[ceil32(ceil32(arg5.length)) + 417] == 2:
                    _6812 = mem[_1699 + 32]
                    mem[arg5.length + _5086 + 104] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                    mem[arg5.length + _5086 + 136] = arg3
                    mem[arg5.length + _5086 + 68] = 68
                    mem[arg5.length + _5086 + 100 len 4] = unknown_0xa9059cbb(?????)
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(Mask(64, 96, _6812) >> 96):
                        revert with 0, 'Address: call to non-contract'
                    mem[arg5.length + _5086 + 232 len 96] = 0, mem[arg5.length + _5086 + 104], arg3, 0
                    call Mask(64, 96, _6812) >> 96 with:
                       funct Mask(32, 224, 0, mem[arg5.length + _5086 + 104], arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, mem[arg5.length + _5086 + 104], arg3, 0) << 288)
                else:
                    if 0 >= mem[ceil32(ceil32(arg5.length)) + 449]:
                        revert with 0, 50
                    _6838 = mem[ceil32(ceil32(arg5.length)) + 481]
                    mem[arg5.length + _5086 + 104] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                    mem[arg5.length + _5086 + 136] = arg3
                    mem[arg5.length + _5086 + 68] = 68
                    mem[arg5.length + _5086 + 100 len 4] = unknown_0xa9059cbb(?????)
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_6838)):
                        revert with 0, 'Address: call to non-contract'
                    mem[arg5.length + _5086 + 232 len 96] = 0, mem[arg5.length + _5086 + 104], arg3, 0
                    call address(_6838) with:
                       funct Mask(32, 224, 0, mem[arg5.length + _5086 + 104], arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, mem[arg5.length + _5086 + 104], arg3, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg5.length:
                            revert with arg5[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg5.length:
                        require arg5.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[arg5.length + _5086 + 264 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[arg5.length + _5086 + 264] == bool(mem[arg5.length + _5086 + 264])
                        if not mem[arg5.length + _5086 + 264]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0xccbb695d: _6749, 0, 2
        else:
            mem[_3385 + _3387 + 32] = 0
            mem[ceil32(ceil32(arg5.length)) + 353] = _3387
            mem[ceil32(ceil32(arg5.length)) + 385] = mem[_5 + _7 + 288]
            require mem[_5 + _7 + 320] < 3
            mem[ceil32(ceil32(arg5.length)) + 417] = mem[_5 + _7 + 320]
            mem[ceil32(ceil32(arg5.length)) + 97] = ceil32(ceil32(arg5.length)) + 225
            require mem[_5 + 160] == mem[_5 + 172 len 20]
            mem[ceil32(ceil32(arg5.length)) + 129] = mem[_5 + 160]
            require mem[_5 + 192] == mem[_5 + 216 len 8]
            mem[ceil32(ceil32(arg5.length)) + 161] = mem[_5 + 192]
            require mem[_5 + 224] == bool(mem[_5 + 224])
            mem[ceil32(ceil32(arg5.length)) + 193] = mem[_5 + 224]
            _5087 = mem[64]
            mem[mem[64] + 32] = address(mem[ceil32(ceil32(arg5.length)) + 129])
            mem[mem[64] + 52] = arg4 << 192
            mem[mem[64] + 60] = chainid << 192
            mem[mem[64] + 68 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, ceil32(ceil32(arg5.length)) + 225) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
            if ceil32(arg5.length) <= arg5.length:
                _6750 = mem[64]
                mem[mem[64]] = arg5.length + 36
                mem[64] = arg5.length + mem[64] + 68
                _6752 = sha3(mem[_6750 + 32 len mem[_6750]])
                if mem[ceil32(ceil32(arg5.length)) + 417] > 2:
                    revert with 0, 33
                if mem[ceil32(ceil32(arg5.length)) + 417] == 2:
                    _6819 = mem[_1699 + 32]
                    mem[arg5.length + _5087 + 104] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                    mem[arg5.length + _5087 + 136] = arg3
                    mem[arg5.length + _5087 + 68] = 68
                    mem[arg5.length + _5087 + 100 len 4] = unknown_0xa9059cbb(?????)
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(Mask(64, 96, _6819) >> 96):
                        revert with 0, 'Address: call to non-contract'
                    mem[arg5.length + _5087 + 232 len 96] = 0, mem[arg5.length + _5087 + 104], arg3, 0
                    call Mask(64, 96, _6819) >> 96 with:
                       funct Mask(32, 224, 0, mem[arg5.length + _5087 + 104], arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, mem[arg5.length + _5087 + 104], arg3, 0) << 288)
                else:
                    if 0 >= mem[ceil32(ceil32(arg5.length)) + 449]:
                        revert with 0, 50
                    _6840 = mem[ceil32(ceil32(arg5.length)) + 481]
                    mem[arg5.length + _5087 + 104] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                    mem[arg5.length + _5087 + 136] = arg3
                    mem[arg5.length + _5087 + 68] = 68
                    mem[arg5.length + _5087 + 100 len 4] = unknown_0xa9059cbb(?????)
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_6840)):
                        revert with 0, 'Address: call to non-contract'
                    mem[arg5.length + _5087 + 232 len 96] = 0, mem[arg5.length + _5087 + 104], arg3, 0
                    call address(_6840) with:
                       funct Mask(32, 224, 0, mem[arg5.length + _5087 + 104], arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, mem[arg5.length + _5087 + 104], arg3, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg5.length:
                            revert with arg5[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg5.length:
                        require arg5.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[arg5.length + _5087 + 264 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[arg5.length + _5087 + 264] == bool(mem[arg5.length + _5087 + 264])
                        if not mem[arg5.length + _5087 + 264]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0xccbb695d: _6752, 0, 2
            else:
                mem[arg5.length + mem[64] + 68] = 0
                _6753 = mem[64]
                mem[mem[64]] = arg5.length + 36
                mem[64] = arg5.length + mem[64] + 68
                _6755 = sha3(mem[_6753 + 32 len mem[_6753]])
                if mem[ceil32(ceil32(arg5.length)) + 417] > 2:
                    revert with 0, 33
                if mem[ceil32(ceil32(arg5.length)) + 417] == 2:
                    _6826 = mem[_1699 + 32]
                    mem[arg5.length + _5087 + 104] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                    mem[arg5.length + _5087 + 136] = arg3
                    mem[arg5.length + _5087 + 68] = 68
                    mem[arg5.length + _5087 + 100 len 4] = unknown_0xa9059cbb(?????)
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(Mask(64, 96, _6826) >> 96):
                        revert with 0, 'Address: call to non-contract'
                    mem[arg5.length + _5087 + 232 len 96] = 0, mem[arg5.length + _5087 + 104], arg3, 0
                    call Mask(64, 96, _6826) >> 96 with:
                       funct Mask(32, 224, 0, mem[arg5.length + _5087 + 104], arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, mem[arg5.length + _5087 + 104], arg3, 0) << 288)
                else:
                    if 0 >= mem[ceil32(ceil32(arg5.length)) + 449]:
                        revert with 0, 50
                    _6842 = mem[ceil32(ceil32(arg5.length)) + 481]
                    mem[arg5.length + _5087 + 104] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                    mem[arg5.length + _5087 + 136] = arg3
                    mem[arg5.length + _5087 + 68] = 68
                    mem[arg5.length + _5087 + 100 len 4] = unknown_0xa9059cbb(?????)
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_6842)):
                        revert with 0, 'Address: call to non-contract'
                    mem[arg5.length + _5087 + 232 len 96] = 0, mem[arg5.length + _5087 + 104], arg3, 0
                    call address(_6842) with:
                       funct Mask(32, 224, 0, mem[arg5.length + _5087 + 104], arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, mem[arg5.length + _5087 + 104], arg3, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg5.length:
                            revert with arg5[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg5.length:
                        require arg5.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[arg5.length + _5087 + 264 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[arg5.length + _5087 + 264] == bool(mem[arg5.length + _5087 + 264])
                        if not mem[arg5.length + _5087 + 264]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0xccbb695d: _6755, 0, 2
    return 0
}



}

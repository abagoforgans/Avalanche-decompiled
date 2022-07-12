contract main {




// =====================  Runtime code  =====================


#
#  - sub_5fdb3d8d(?)
#  - sub_a8a7e29c(?)
#  - _fallback()
#
address owner;
address sub_a1a227faAddress;
mapping of uint256 sub_34e18125;
mapping of uint8 stor3;
address sub_457bfa2fAddress;

function sub_34e18125(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_34e18125[arg1]
}

function sub_457bfa2f(?) {
    return sub_457bfa2fAddress
}

function owner() {
    return owner
}

function sub_a1a227fa(?) {
    return sub_a1a227faAddress
}

function sub_496dbfd9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_34e18125[address(arg1)] = arg2
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
    stor3[address(arg1)] = uint8(bool(arg2))
}

function sub_20be95f2(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if sub_a1a227faAddress != msg.sender:
        revert with 0, 'caller is not message bus'
    else:
        return 0
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

function sub_f00f39ce(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == uint64(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if sub_a1a227faAddress != msg.sender:
        revert with 0, 'caller is not message bus'
    require arg4.length >= 32
    _5 = mem[128]
    require mem[128] <= test266151307()
    require arg4.length - mem[128] >= 128
    if not bool(ceil32(ceil32(arg4.length)) + 225 <= test266151307()):
        revert with 0, 65
    _7 = mem[mem[128] + 128]
    require mem[mem[128] + 128] <= test266151307()
    require arg4.length - mem[128] - mem[mem[128] + 128] >= 128
    if not bool(ceil32(ceil32(arg4.length)) + 353 <= test266151307()):
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg4.length)) + 353
    _9 = mem[mem[128] + mem[mem[128] + 128] + 128]
    require mem[mem[128] + mem[mem[128] + 128] + 128] <= test266151307()
    require arg4.length + 128 > mem[128] + mem[mem[128] + 128] + mem[mem[128] + mem[mem[128] + 128] + 128] + 159
    _10 = mem[mem[128] + mem[mem[128] + 128] + mem[mem[128] + mem[mem[128] + 128] + 128] + 128]
    if mem[mem[128] + mem[mem[128] + 128] + mem[mem[128] + mem[mem[128] + 128] + 128] + 128] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[128] + mem[mem[128] + 128] + mem[mem[128] + mem[mem[128] + 128] + 128] + 128]) + 354 < 353 or ceil32(ceil32(arg4.length)) + ceil32(32 * mem[mem[128] + mem[mem[128] + 128] + mem[mem[128] + mem[mem[128] + 128] + 128] + 128]) + 354 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg4.length)) + ceil32(32 * mem[mem[128] + mem[mem[128] + 128] + mem[mem[128] + mem[mem[128] + 128] + 128] + 128]) + 354
    mem[ceil32(ceil32(arg4.length)) + 353] = _10
    require mem[128] + _7 + _9 + (32 * _10) + 64 <= arg4.length + 32
    s = ceil32(ceil32(arg4.length)) + 385
    idx = mem[128] + _7 + _9 + 160
    while idx < mem[128] + _7 + _9 + (32 * _10) + 160:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        idx = idx + 32
        continue 
    mem[ceil32(ceil32(arg4.length)) + 225] = ceil32(ceil32(arg4.length)) + 353
    require mem[mem[128] + _7 + 160] == mem[mem[128] + _7 + 172 len 20]
    mem[ceil32(ceil32(arg4.length)) + 257] = mem[mem[128] + _7 + 160]
    mem[ceil32(ceil32(arg4.length)) + 289] = mem[mem[128] + _7 + 192]
    mem[ceil32(ceil32(arg4.length)) + 321] = mem[mem[128] + _7 + 224]
    mem[ceil32(ceil32(arg4.length)) + 97] = ceil32(ceil32(arg4.length)) + 225
    require mem[_5 + 160] == mem[_5 + 172 len 20]
    mem[ceil32(ceil32(arg4.length)) + 129] = mem[_5 + 160]
    require mem[_5 + 192] == mem[_5 + 216 len 8]
    mem[ceil32(ceil32(arg4.length)) + 161] = mem[_5 + 192]
    require mem[_5 + 224] == bool(mem[_5 + 224])
    mem[ceil32(ceil32(arg4.length)) + 193] = mem[_5 + 224]
    _45 = mem[64]
    mem[mem[64] + 32] = address(mem[ceil32(ceil32(arg4.length)) + 129])
    mem[mem[64] + 52] = arg3 << 192
    mem[mem[64] + 60] = chainid << 192
    mem[mem[64] + 68 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(ceil32(arg4.length)) + 225) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
    if ceil32(arg4.length) <= arg4.length:
        _63 = mem[64]
        mem[mem[64]] = arg4.length + 36
        mem[64] = arg4.length + mem[64] + 68
        mem[arg4.length + _45 + 68] = sha3(mem[_63 + 32 len mem[_63]])
    else:
        mem[arg4.length + mem[64] + 68] = 0
        _66 = mem[64]
        mem[mem[64]] = arg4.length + 36
        mem[64] = arg4.length + mem[64] + 68
        mem[arg4.length + _45 + 68] = sha3(mem[_66 + 32 len mem[_66]])
    emit 0xccbb695d: mem[arg4.length + _45 + 68], 0, 2
    return 0
}

function sub_ce35dd9a(?) payable {
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
    require arg5.length - mem[128] - mem[mem[128] + 128] >= 128
    if not bool(ceil32(ceil32(arg5.length)) + 353 <= test266151307()):
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg5.length)) + 353
    _9 = mem[mem[128] + mem[mem[128] + 128] + 128]
    require mem[mem[128] + mem[mem[128] + 128] + 128] <= test266151307()
    require arg5.length + 128 > mem[128] + mem[mem[128] + 128] + mem[mem[128] + mem[mem[128] + 128] + 128] + 159
    _10 = mem[mem[128] + mem[mem[128] + 128] + mem[mem[128] + mem[mem[128] + 128] + 128] + 128]
    if mem[mem[128] + mem[mem[128] + 128] + mem[mem[128] + mem[mem[128] + 128] + 128] + 128] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[128] + mem[mem[128] + 128] + mem[mem[128] + mem[mem[128] + 128] + 128] + 128]) + 354 < 353 or ceil32(ceil32(arg5.length)) + ceil32(32 * mem[mem[128] + mem[mem[128] + 128] + mem[mem[128] + mem[mem[128] + 128] + 128] + 128]) + 354 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg5.length)) + ceil32(32 * mem[mem[128] + mem[mem[128] + 128] + mem[mem[128] + mem[mem[128] + 128] + 128] + 128]) + 354
    mem[ceil32(ceil32(arg5.length)) + 353] = _10
    require mem[128] + _7 + _9 + (32 * _10) + 64 <= arg5.length + 32
    s = ceil32(ceil32(arg5.length)) + 385
    idx = mem[128] + _7 + _9 + 160
    while idx < mem[128] + _7 + _9 + (32 * _10) + 160:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        idx = idx + 32
        continue 
    mem[ceil32(ceil32(arg5.length)) + 225] = ceil32(ceil32(arg5.length)) + 353
    require mem[mem[128] + _7 + 160] == mem[mem[128] + _7 + 172 len 20]
    mem[ceil32(ceil32(arg5.length)) + 257] = mem[mem[128] + _7 + 160]
    mem[ceil32(ceil32(arg5.length)) + 289] = mem[mem[128] + _7 + 192]
    mem[ceil32(ceil32(arg5.length)) + 321] = mem[mem[128] + _7 + 224]
    mem[ceil32(ceil32(arg5.length)) + 97] = ceil32(ceil32(arg5.length)) + 225
    require mem[_5 + 160] == mem[_5 + 172 len 20]
    mem[ceil32(ceil32(arg5.length)) + 129] = mem[_5 + 160]
    require mem[_5 + 192] == mem[_5 + 216 len 8]
    mem[ceil32(ceil32(arg5.length)) + 161] = mem[_5 + 192]
    require mem[_5 + 224] == bool(mem[_5 + 224])
    mem[ceil32(ceil32(arg5.length)) + 193] = mem[_5 + 224]
    if not _10:
        revert with 0, 50
    if address(arg2) != mem[ceil32(ceil32(arg5.length)) + 397 len 20]:
        revert with 0, 'bridged token must be the same as the first token in destination swap path'
    _4298 = mem[64]
    mem[mem[64] + 32] = address(mem[ceil32(ceil32(arg5.length)) + 129])
    mem[mem[64] + 52] = arg4 << 192
    mem[mem[64] + 60] = chainid << 192
    mem[mem[64] + 68 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, ceil32(ceil32(arg5.length)) + 225) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
    if ceil32(arg5.length) <= arg5.length:
        _8623 = mem[64]
        mem[mem[64]] = arg5.length + 36
        mem[64] = arg5.length + mem[64] + 68
        _8625 = sha3(mem[_8623 + 32 len mem[_8623]])
        if 1 >= _10:
            if not _10:
                revert with 0, 50
            _8643 = mem[ceil32(ceil32(arg5.length)) + 385]
            if mem[ceil32(ceil32(arg5.length)) + 193]:
                if sub_457bfa2fAddress != mem[ceil32(ceil32(arg5.length)) + 397 len 20]:
                    revert with 0, 'token mismatch'
                require ext_code.size(sub_457bfa2fAddress)
                call sub_457bfa2fAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call mem[ceil32(ceil32(arg5.length)) + 141 len 20] with:
                   value arg3 wei
                     gas 50000 wei
                if not ext_call.success:
                    revert with 0, 'failed to send native'
                emit 0xccbb695d: sha3(mem[_8623 + 32 len mem[_8623]]), arg3, 1
            else:
                mem[arg5.length + _4298 + 104] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                mem[arg5.length + _4298 + 136] = arg3
                mem[arg5.length + _4298 + 68] = 68
                mem[arg5.length + _4298 + 100 len 4] = unknown_0xa9059cbb(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(_8643)):
                    revert with 0, 'Address: call to non-contract'
                mem[arg5.length + _4298 + 232 len 96] = 0, mem[arg5.length + _4298 + 104], arg3, 0
                call address(_8643) with:
                   funct Mask(32, 224, 0, mem[arg5.length + _4298 + 104], arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, mem[arg5.length + _4298 + 104], arg3, 0) << 288)
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
                    mem[arg5.length + _4298 + 264 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[arg5.length + _4298 + 264] == bool(mem[arg5.length + _4298 + 264])
                        if not mem[arg5.length + _4298 + 264]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0xccbb695d: _8625, arg3, 1
        else:
            mem[0] = mem[ceil32(ceil32(arg5.length)) + 269 len 20]
            mem[32] = 3
            if not stor3[mem[ceil32(ceil32(arg5.length)) + 269 len 20]]:
                mem[arg5.length + _4298 + 104] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                mem[arg5.length + _4298 + 136] = arg3
                mem[arg5.length + _4298 + 68] = 68
                mem[arg5.length + _4298 + 100 len 4] = unknown_0xa9059cbb(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[arg5.length + _4298 + 232 len 96] = 0, mem[arg5.length + _4298 + 104], arg3, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, mem[arg5.length + _4298 + 104], arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, mem[arg5.length + _4298 + 104], arg3, 0) << 288)
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
                    mem[arg5.length + _4298 + 264 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[arg5.length + _4298 + 264] == bool(mem[arg5.length + _4298 + 264])
                        if not mem[arg5.length + _4298 + 264]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0xccbb695d: _8625, arg3, 3
            else:
                _8653 = mem[ceil32(ceil32(arg5.length)) + 257]
                if 0 >= _10:
                    revert with 0, 50
                _8659 = mem[ceil32(ceil32(arg5.length)) + 385]
                mem[arg5.length + _4298 + 72] = this.address
                mem[arg5.length + _4298 + 104] = address(_8653)
                require ext_code.size(address(_8659))
                staticcall address(_8659).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(_8653)
                mem[arg5.length + _4298 + 68] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = arg5.length + _4298 + ceil32(return_data.size) + 68
                require return_data.size >= 32
                if ext_call.return_data[0] > !arg3:
                    revert with 0, 17
                mem[arg5.length + _4298 + ceil32(return_data.size) + 104] = address(_8653)
                mem[arg5.length + _4298 + ceil32(return_data.size) + 136] = ext_call.return_data[0] + arg3
                mem[arg5.length + _4298 + ceil32(return_data.size) + 68] = 68
                mem[arg5.length + _4298 + ceil32(return_data.size) + 104 len 28] = address(_8653) << 64
                mem[arg5.length + _4298 + ceil32(return_data.size) + 100 len 4] = approve(address arg1, uint256 arg2)
                mem[arg5.length + _4298 + ceil32(return_data.size) + 168] = 32
                mem[arg5.length + _4298 + ceil32(return_data.size) + 200] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(_8659)):
                    revert with 0, 'Address: call to non-contract'
                mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 96] = approve(address arg1, uint256 arg2), address(_8653) << 64, 0, ext_call.return_data[0] + arg3, 0
                mem[arg5.length + _4298 + ceil32(return_data.size) + 300] = 0
                call address(_8659) with:
                   funct Mask(32, 224, approve(address arg1, uint256 arg2), address(_8653) << 64, 0, ext_call.return_data[0] + arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, approve(address arg1, uint256 arg2), address(_8653) << 64, 0, ext_call.return_data[0] + arg3, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg5.length:
                            revert with arg5[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not arg5.length:
                        _13157 = mem[ceil32(ceil32(arg5.length)) + 257]
                        _13158 = mem[ceil32(ceil32(arg5.length)) + 321]
                        _13160 = mem[ceil32(ceil32(arg5.length)) + 289]
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 232] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 236] = arg3
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 268] = _13158
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 300] = 160
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 396] = _10
                        idx = 0
                        s = ceil32(ceil32(arg5.length)) + 385
                        t = arg5.length + _4298 + ceil32(return_data.size) + 428
                        while idx < _10:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 332] = this.address
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 364] = _13160
                        require ext_code.size(address(_13157))
                        call address(_13157).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _13158, Array(len=_10, data=mem[arg5.length + _4298 + ceil32(return_data.size) + 428 len 32 * _10]), address(this.address), _13160
                        if not ext_call.success:
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(arg2)):
                                revert with 0, 'Address: call to non-contract'
                            mem[arg5.length + _4298 + ceil32(return_data.size) + 396 len 96] = 0, mem[ceil32(ceil32(arg5.length)) + 141 len 20], arg3, 0
                            call address(arg2) with:
                                 gas gas_remaining wei
                                args (Mask(512, -288, 0, mem[ceil32(ceil32(arg5.length)) + 141 len 20], arg3, 0) << 288)
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
                                mem[arg5.length + _4298 + ceil32(return_data.size) + 428 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[arg5.length + _4298 + ceil32(return_data.size) + 428] == bool(mem[arg5.length + _4298 + ceil32(return_data.size) + 428])
                                    if not mem[arg5.length + _4298 + ceil32(return_data.size) + 428]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            emit 0xccbb695d: _8625, arg3, 3
                        else:
                            mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = arg5.length + _4298 + (2 * ceil32(return_data.size)) + 232
                            require return_data.size >= 32
                            _17241 = mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32
                            require mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require arg5.length + _4298 + ceil32(return_data.size) + return_data.size + 232 > arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 263
                            _17262 = mem[arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 232]
                            if mem[arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 232] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 232]) + 1 < 0 or arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 232]) + 233 > test266151307():
                                revert with 0, 65
                            mem[64] = arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 232]) + 233
                            mem[arg5.length + _4298 + (2 * ceil32(return_data.size)) + 232] = _17262
                            require _17241 + (32 * _17262) + 32 <= return_data.size
                            mem[arg5.length + _4298 + (2 * ceil32(return_data.size)) + 264 len ceil32(32 * _17262)] = mem[arg5.length + _4298 + ceil32(return_data.size) + _17241 + 264 len ceil32(32 * _17262)]
                            if _17262 < 1:
                                revert with 0, 17
                            if _17262 - 1 >= _17262:
                                revert with 0, 50
                            _20973 = mem[(32 * _17262 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + 264]
                            if _10 < 1:
                                revert with 0, 17
                            if _10 - 1 >= _10:
                                revert with 0, 50
                            _21489 = mem[(32 * _10 - 1) + ceil32(ceil32(arg5.length)) + 385]
                            if mem[ceil32(ceil32(arg5.length)) + 193]:
                                if sub_457bfa2fAddress != mem[(32 * _10 - 1) + ceil32(ceil32(arg5.length)) + 397 len 20]:
                                    revert with 0, 'token mismatch'
                                require ext_code.size(sub_457bfa2fAddress)
                                call sub_457bfa2fAddress.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args mem[(32 * _17262 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + 264]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call mem[ceil32(ceil32(arg5.length)) + 141 len 20] with:
                                   value mem[(32 * _17262 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + 264] wei
                                     gas 50000 wei
                                if not ext_call.success:
                                    revert with 0, 'failed to send native'
                                emit 0xccbb695d: _8625, mem[(32 * _17262 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + 264], 1
                            else:
                                _21645 = mem[64]
                                mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                                mem[mem[64] + 68] = _20973
                                _21813 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_21645 + 100] = 32
                                mem[_21645 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(_21489)):
                                    revert with 0, 'Address: call to non-contract'
                                _22305 = mem[_21813]
                                mem[_21645 + 164 len ceil32(mem[_21813])] = mem[_21813 + 32 len ceil32(mem[_21813])]
                                if ceil32(_22305) > _22305:
                                    mem[_22305 + _21645 + 164] = 0
                                call address(_21489) with:
                                     gas gas_remaining wei
                                    args mem[_21645 + 168 len _22305 - 4]
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
                                    mem[_21645 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_21645 + 196] == bool(mem[_21645 + 196])
                                        if not mem[_21645 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                emit 0xccbb695d: _8625, _20973, 1
                    else:
                        require arg5.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        _13355 = mem[ceil32(ceil32(arg5.length)) + 257]
                        _13356 = mem[ceil32(ceil32(arg5.length)) + 321]
                        _13358 = mem[ceil32(ceil32(arg5.length)) + 289]
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 232] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 236] = arg3
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 268] = _13356
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 300] = 160
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 396] = _10
                        idx = 0
                        s = ceil32(ceil32(arg5.length)) + 385
                        t = arg5.length + _4298 + ceil32(return_data.size) + 428
                        while idx < _10:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 332] = this.address
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 364] = _13358
                        require ext_code.size(address(_13355))
                        call address(_13355).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _13356, Array(len=_10, data=mem[arg5.length + _4298 + ceil32(return_data.size) + 428 len 32 * _10]), address(this.address), _13358
                        if not ext_call.success:
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(arg2)):
                                revert with 0, 'Address: call to non-contract'
                            mem[arg5.length + _4298 + ceil32(return_data.size) + 396 len 96] = 0, mem[ceil32(ceil32(arg5.length)) + 141 len 20], arg3, 0
                            call address(arg2) with:
                                 gas gas_remaining wei
                                args (Mask(512, -288, 0, mem[ceil32(ceil32(arg5.length)) + 141 len 20], arg3, 0) << 288)
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
                                mem[arg5.length + _4298 + ceil32(return_data.size) + 428 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[arg5.length + _4298 + ceil32(return_data.size) + 428] == bool(mem[arg5.length + _4298 + ceil32(return_data.size) + 428])
                                    if not mem[arg5.length + _4298 + ceil32(return_data.size) + 428]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            emit 0xccbb695d: _8625, arg3, 3
                        else:
                            mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = arg5.length + _4298 + (2 * ceil32(return_data.size)) + 232
                            require return_data.size >= 32
                            _17242 = mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32
                            require mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require arg5.length + _4298 + ceil32(return_data.size) + return_data.size + 232 > arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 263
                            _17264 = mem[arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 232]
                            if mem[arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 232] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 232]) + 1 < 0 or arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 232]) + 233 > test266151307():
                                revert with 0, 65
                            mem[64] = arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 232]) + 233
                            mem[arg5.length + _4298 + (2 * ceil32(return_data.size)) + 232] = _17264
                            require _17242 + (32 * _17264) + 32 <= return_data.size
                            mem[arg5.length + _4298 + (2 * ceil32(return_data.size)) + 264 len ceil32(32 * _17264)] = mem[arg5.length + _4298 + ceil32(return_data.size) + _17242 + 264 len ceil32(32 * _17264)]
                            if _17264 < 1:
                                revert with 0, 17
                            if _17264 - 1 >= _17264:
                                revert with 0, 50
                            _20978 = mem[(32 * _17264 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + 264]
                            if _10 < 1:
                                revert with 0, 17
                            if _10 - 1 >= _10:
                                revert with 0, 50
                            _21492 = mem[(32 * _10 - 1) + ceil32(ceil32(arg5.length)) + 385]
                            if mem[ceil32(ceil32(arg5.length)) + 193]:
                                if sub_457bfa2fAddress != mem[(32 * _10 - 1) + ceil32(ceil32(arg5.length)) + 397 len 20]:
                                    revert with 0, 'token mismatch'
                                require ext_code.size(sub_457bfa2fAddress)
                                call sub_457bfa2fAddress.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args mem[(32 * _17264 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + 264]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call mem[ceil32(ceil32(arg5.length)) + 141 len 20] with:
                                   value mem[(32 * _17264 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + 264] wei
                                     gas 50000 wei
                                if not ext_call.success:
                                    revert with 0, 'failed to send native'
                                emit 0xccbb695d: _8625, mem[(32 * _17264 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + 264], 1
                            else:
                                _21657 = mem[64]
                                mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                                mem[mem[64] + 68] = _20978
                                _21820 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_21657 + 100] = 32
                                mem[_21657 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(_21492)):
                                    revert with 0, 'Address: call to non-contract'
                                _22311 = mem[_21820]
                                mem[_21657 + 164 len ceil32(mem[_21820])] = mem[_21820 + 32 len ceil32(mem[_21820])]
                                if ceil32(_22311) > _22311:
                                    mem[_22311 + _21657 + 164] = 0
                                call address(_21492) with:
                                     gas gas_remaining wei
                                    args mem[_21657 + 168 len _22311 - 4]
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
                                    mem[_21657 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_21657 + 196] == bool(mem[_21657 + 196])
                                        if not mem[_21657 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                emit 0xccbb695d: _8625, _20978, 1
                else:
                    mem[arg5.length + _4298 + ceil32(return_data.size) + 232] = return_data.size
                    mem[arg5.length + _4298 + ceil32(return_data.size) + 264 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        _13163 = mem[ceil32(ceil32(arg5.length)) + 257]
                        _13164 = mem[ceil32(ceil32(arg5.length)) + 321]
                        _13166 = mem[ceil32(ceil32(arg5.length)) + 289]
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 237] = arg3
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 269] = _13164
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 301] = 160
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = _10
                        idx = 0
                        s = ceil32(ceil32(arg5.length)) + 385
                        t = arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429
                        while idx < _10:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = this.address
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 365] = _13166
                        require ext_code.size(address(_13163))
                        call address(_13163).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _13164, Array(len=_10, data=mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 32 * _10]), address(this.address), _13166
                        if not ext_call.success:
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(arg2)):
                                revert with 0, 'Address: call to non-contract'
                            mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 397 len 96] = 0, mem[ceil32(ceil32(arg5.length)) + 141 len 20], arg3, 0
                            call address(arg2) with:
                                 gas gas_remaining wei
                                args (Mask(512, -288, 0, mem[ceil32(ceil32(arg5.length)) + 141 len 20], arg3, 0) << 288)
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
                                mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429] == bool(mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429])
                                    if not mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            emit 0xccbb695d: _8625, arg3, 3
                        else:
                            mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233
                            require return_data.size >= 32
                            _17243 = mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32
                            require mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 233 > arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 264
                            _17266 = mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233]
                            if mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233]) + 1 < 0 or arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233]) + 234 > test266151307():
                                revert with 0, 65
                            mem[64] = arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233]) + 234
                            mem[arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233]
                            require _17243 + (32 * _17266) + 32 <= return_data.size
                            mem[arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265 len ceil32(32 * _17266)] = mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + _17243 + 265 len ceil32(32 * _17266)]
                            if _17266 < 1:
                                revert with 0, 17
                            if _17266 - 1 >= _17266:
                                revert with 0, 50
                            _20983 = mem[(32 * _17266 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265]
                            if _10 < 1:
                                revert with 0, 17
                            if _10 - 1 >= _10:
                                revert with 0, 50
                            _21495 = mem[(32 * _10 - 1) + ceil32(ceil32(arg5.length)) + 385]
                            if mem[ceil32(ceil32(arg5.length)) + 193]:
                                if sub_457bfa2fAddress != mem[(32 * _10 - 1) + ceil32(ceil32(arg5.length)) + 397 len 20]:
                                    revert with 0, 'token mismatch'
                                require ext_code.size(sub_457bfa2fAddress)
                                call sub_457bfa2fAddress.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args mem[(32 * _17266 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call mem[ceil32(ceil32(arg5.length)) + 141 len 20] with:
                                   value mem[(32 * _17266 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] wei
                                     gas 50000 wei
                                if not ext_call.success:
                                    revert with 0, 'failed to send native'
                                emit 0xccbb695d: _8625, mem[(32 * _17266 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265], 1
                            else:
                                _21669 = mem[64]
                                mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                                mem[mem[64] + 68] = _20983
                                _21827 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_21669 + 100] = 32
                                mem[_21669 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(_21495)):
                                    revert with 0, 'Address: call to non-contract'
                                _22317 = mem[_21827]
                                mem[_21669 + 164 len ceil32(mem[_21827])] = mem[_21827 + 32 len ceil32(mem[_21827])]
                                if ceil32(_22317) > _22317:
                                    mem[_22317 + _21669 + 164] = 0
                                call address(_21495) with:
                                     gas gas_remaining wei
                                    args mem[_21669 + 168 len _22317 - 4]
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
                                    mem[_21669 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_21669 + 196] == bool(mem[_21669 + 196])
                                        if not mem[_21669 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                emit 0xccbb695d: _8625, _20983, 1
                    else:
                        require return_data.size >= 32
                        require mem[arg5.length + _4298 + ceil32(return_data.size) + 264] == bool(mem[arg5.length + _4298 + ceil32(return_data.size) + 264])
                        if not mem[arg5.length + _4298 + ceil32(return_data.size) + 264]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        _13360 = mem[ceil32(ceil32(arg5.length)) + 257]
                        _13361 = mem[ceil32(ceil32(arg5.length)) + 321]
                        _13363 = mem[ceil32(ceil32(arg5.length)) + 289]
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 237] = arg3
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 269] = _13361
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 301] = 160
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = _10
                        idx = 0
                        s = ceil32(ceil32(arg5.length)) + 385
                        t = arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429
                        while idx < _10:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = this.address
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 365] = _13363
                        require ext_code.size(address(_13360))
                        call address(_13360).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _13361, Array(len=_10, data=mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 32 * _10]), address(this.address), _13363
                        if not ext_call.success:
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(arg2)):
                                revert with 0, 'Address: call to non-contract'
                            mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 397 len 96] = 0, mem[ceil32(ceil32(arg5.length)) + 141 len 20], arg3, 0
                            call address(arg2) with:
                                 gas gas_remaining wei
                                args (Mask(512, -288, 0, mem[ceil32(ceil32(arg5.length)) + 141 len 20], arg3, 0) << 288)
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
                                mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429] == bool(mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429])
                                    if not mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            emit 0xccbb695d: _8625, arg3, 3
                        else:
                            mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233
                            require return_data.size >= 32
                            _17244 = mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32
                            require mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 233 > arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 264
                            _17268 = mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233]
                            if mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233]) + 1 < 0 or arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233]) + 234 > test266151307():
                                revert with 0, 65
                            mem[64] = arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233]) + 234
                            mem[arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233]
                            require _17244 + (32 * _17268) + 32 <= return_data.size
                            mem[arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265 len ceil32(32 * _17268)] = mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + _17244 + 265 len ceil32(32 * _17268)]
                            if _17268 < 1:
                                revert with 0, 17
                            if _17268 - 1 >= _17268:
                                revert with 0, 50
                            _20988 = mem[(32 * _17268 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265]
                            if _10 < 1:
                                revert with 0, 17
                            if _10 - 1 >= _10:
                                revert with 0, 50
                            _21498 = mem[(32 * _10 - 1) + ceil32(ceil32(arg5.length)) + 385]
                            if mem[ceil32(ceil32(arg5.length)) + 193]:
                                if sub_457bfa2fAddress != mem[(32 * _10 - 1) + ceil32(ceil32(arg5.length)) + 397 len 20]:
                                    revert with 0, 'token mismatch'
                                require ext_code.size(sub_457bfa2fAddress)
                                call sub_457bfa2fAddress.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args mem[(32 * _17268 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call mem[ceil32(ceil32(arg5.length)) + 141 len 20] with:
                                   value mem[(32 * _17268 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] wei
                                     gas 50000 wei
                                if not ext_call.success:
                                    revert with 0, 'failed to send native'
                                emit 0xccbb695d: _8625, mem[(32 * _17268 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265], 1
                            else:
                                _21681 = mem[64]
                                mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                                mem[mem[64] + 68] = _20988
                                _21834 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_21681 + 100] = 32
                                mem[_21681 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(_21498)):
                                    revert with 0, 'Address: call to non-contract'
                                _22323 = mem[_21834]
                                mem[_21681 + 164 len ceil32(mem[_21834])] = mem[_21834 + 32 len ceil32(mem[_21834])]
                                if ceil32(_22323) > _22323:
                                    mem[_22323 + _21681 + 164] = 0
                                call address(_21498) with:
                                     gas gas_remaining wei
                                    args mem[_21681 + 168 len _22323 - 4]
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
                                    mem[_21681 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_21681 + 196] == bool(mem[_21681 + 196])
                                        if not mem[_21681 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                emit 0xccbb695d: _8625, _20988, 1
    else:
        mem[arg5.length + mem[64] + 68] = 0
        _8626 = mem[64]
        mem[mem[64]] = arg5.length + 36
        mem[64] = arg5.length + mem[64] + 68
        _8628 = sha3(mem[_8626 + 32 len mem[_8626]])
        if 1 >= _10:
            if not _10:
                revert with 0, 50
            _8648 = mem[ceil32(ceil32(arg5.length)) + 385]
            if mem[ceil32(ceil32(arg5.length)) + 193]:
                if sub_457bfa2fAddress != mem[ceil32(ceil32(arg5.length)) + 397 len 20]:
                    revert with 0, 'token mismatch'
                require ext_code.size(sub_457bfa2fAddress)
                call sub_457bfa2fAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call mem[ceil32(ceil32(arg5.length)) + 141 len 20] with:
                   value arg3 wei
                     gas 50000 wei
                if not ext_call.success:
                    revert with 0, 'failed to send native'
                emit 0xccbb695d: sha3(mem[_8626 + 32 len mem[_8626]]), arg3, 1
            else:
                mem[arg5.length + _4298 + 104] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                mem[arg5.length + _4298 + 136] = arg3
                mem[arg5.length + _4298 + 68] = 68
                mem[arg5.length + _4298 + 100 len 4] = unknown_0xa9059cbb(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(_8648)):
                    revert with 0, 'Address: call to non-contract'
                mem[arg5.length + _4298 + 232 len 96] = 0, mem[arg5.length + _4298 + 104], arg3, 0
                call address(_8648) with:
                   funct Mask(32, 224, 0, mem[arg5.length + _4298 + 104], arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, mem[arg5.length + _4298 + 104], arg3, 0) << 288)
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
                    mem[arg5.length + _4298 + 264 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[arg5.length + _4298 + 264] == bool(mem[arg5.length + _4298 + 264])
                        if not mem[arg5.length + _4298 + 264]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0xccbb695d: _8628, arg3, 1
        else:
            mem[0] = mem[ceil32(ceil32(arg5.length)) + 269 len 20]
            mem[32] = 3
            if not stor3[mem[ceil32(ceil32(arg5.length)) + 269 len 20]]:
                mem[arg5.length + _4298 + 104] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                mem[arg5.length + _4298 + 136] = arg3
                mem[arg5.length + _4298 + 68] = 68
                mem[arg5.length + _4298 + 100 len 4] = unknown_0xa9059cbb(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[arg5.length + _4298 + 232 len 96] = 0, mem[arg5.length + _4298 + 104], arg3, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, mem[arg5.length + _4298 + 104], arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, mem[arg5.length + _4298 + 104], arg3, 0) << 288)
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
                    mem[arg5.length + _4298 + 264 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[arg5.length + _4298 + 264] == bool(mem[arg5.length + _4298 + 264])
                        if not mem[arg5.length + _4298 + 264]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0xccbb695d: _8628, arg3, 3
            else:
                _8656 = mem[ceil32(ceil32(arg5.length)) + 257]
                if 0 >= _10:
                    revert with 0, 50
                _8660 = mem[ceil32(ceil32(arg5.length)) + 385]
                mem[arg5.length + _4298 + 72] = this.address
                mem[arg5.length + _4298 + 104] = address(_8656)
                require ext_code.size(address(_8660))
                staticcall address(_8660).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(_8656)
                mem[arg5.length + _4298 + 68] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = arg5.length + _4298 + ceil32(return_data.size) + 68
                require return_data.size >= 32
                if ext_call.return_data[0] > !arg3:
                    revert with 0, 17
                mem[arg5.length + _4298 + ceil32(return_data.size) + 104] = address(_8656)
                mem[arg5.length + _4298 + ceil32(return_data.size) + 136] = ext_call.return_data[0] + arg3
                mem[arg5.length + _4298 + ceil32(return_data.size) + 68] = 68
                mem[arg5.length + _4298 + ceil32(return_data.size) + 104 len 28] = address(_8656) << 64
                mem[arg5.length + _4298 + ceil32(return_data.size) + 100 len 4] = approve(address arg1, uint256 arg2)
                mem[arg5.length + _4298 + ceil32(return_data.size) + 168] = 32
                mem[arg5.length + _4298 + ceil32(return_data.size) + 200] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(_8660)):
                    revert with 0, 'Address: call to non-contract'
                mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 96] = approve(address arg1, uint256 arg2), address(_8656) << 64, 0, ext_call.return_data[0] + arg3, 0
                mem[arg5.length + _4298 + ceil32(return_data.size) + 300] = 0
                call address(_8660) with:
                   funct Mask(32, 224, approve(address arg1, uint256 arg2), address(_8656) << 64, 0, ext_call.return_data[0] + arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, approve(address arg1, uint256 arg2), address(_8656) << 64, 0, ext_call.return_data[0] + arg3, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg5.length:
                            revert with arg5[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not arg5.length:
                        _13189 = mem[ceil32(ceil32(arg5.length)) + 257]
                        _13190 = mem[ceil32(ceil32(arg5.length)) + 321]
                        _13192 = mem[ceil32(ceil32(arg5.length)) + 289]
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 232] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 236] = arg3
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 268] = _13190
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 300] = 160
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 396] = _10
                        idx = 0
                        s = ceil32(ceil32(arg5.length)) + 385
                        t = arg5.length + _4298 + ceil32(return_data.size) + 428
                        while idx < _10:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 332] = this.address
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 364] = _13192
                        require ext_code.size(address(_13189))
                        call address(_13189).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _13190, Array(len=_10, data=mem[arg5.length + _4298 + ceil32(return_data.size) + 428 len 32 * _10]), address(this.address), _13192
                        if not ext_call.success:
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(arg2)):
                                revert with 0, 'Address: call to non-contract'
                            mem[arg5.length + _4298 + ceil32(return_data.size) + 396 len 96] = 0, mem[ceil32(ceil32(arg5.length)) + 141 len 20], arg3, 0
                            call address(arg2) with:
                                 gas gas_remaining wei
                                args (Mask(512, -288, 0, mem[ceil32(ceil32(arg5.length)) + 141 len 20], arg3, 0) << 288)
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
                                mem[arg5.length + _4298 + ceil32(return_data.size) + 428 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[arg5.length + _4298 + ceil32(return_data.size) + 428] == bool(mem[arg5.length + _4298 + ceil32(return_data.size) + 428])
                                    if not mem[arg5.length + _4298 + ceil32(return_data.size) + 428]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            emit 0xccbb695d: _8628, arg3, 3
                        else:
                            mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = arg5.length + _4298 + (2 * ceil32(return_data.size)) + 232
                            require return_data.size >= 32
                            _17249 = mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32
                            require mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require arg5.length + _4298 + ceil32(return_data.size) + return_data.size + 232 > arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 263
                            _17278 = mem[arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 232]
                            if mem[arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 232] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 232]) + 1 < 0 or arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 232]) + 233 > test266151307():
                                revert with 0, 65
                            mem[64] = arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 232]) + 233
                            mem[arg5.length + _4298 + (2 * ceil32(return_data.size)) + 232] = _17278
                            require _17249 + (32 * _17278) + 32 <= return_data.size
                            mem[arg5.length + _4298 + (2 * ceil32(return_data.size)) + 264 len ceil32(32 * _17278)] = mem[arg5.length + _4298 + ceil32(return_data.size) + _17249 + 264 len ceil32(32 * _17278)]
                            if _17278 < 1:
                                revert with 0, 17
                            if _17278 - 1 >= _17278:
                                revert with 0, 50
                            _21013 = mem[(32 * _17278 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + 264]
                            if _10 < 1:
                                revert with 0, 17
                            if _10 - 1 >= _10:
                                revert with 0, 50
                            _21513 = mem[(32 * _10 - 1) + ceil32(ceil32(arg5.length)) + 385]
                            if mem[ceil32(ceil32(arg5.length)) + 193]:
                                if sub_457bfa2fAddress != mem[(32 * _10 - 1) + ceil32(ceil32(arg5.length)) + 397 len 20]:
                                    revert with 0, 'token mismatch'
                                require ext_code.size(sub_457bfa2fAddress)
                                call sub_457bfa2fAddress.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args mem[(32 * _17278 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + 264]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call mem[ceil32(ceil32(arg5.length)) + 141 len 20] with:
                                   value mem[(32 * _17278 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + 264] wei
                                     gas 50000 wei
                                if not ext_call.success:
                                    revert with 0, 'failed to send native'
                                emit 0xccbb695d: _8628, mem[(32 * _17278 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + 264], 1
                            else:
                                _21741 = mem[64]
                                mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                                mem[mem[64] + 68] = _21013
                                _21869 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_21741 + 100] = 32
                                mem[_21741 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(_21513)):
                                    revert with 0, 'Address: call to non-contract'
                                _22353 = mem[_21869]
                                mem[_21741 + 164 len ceil32(mem[_21869])] = mem[_21869 + 32 len ceil32(mem[_21869])]
                                if ceil32(_22353) > _22353:
                                    mem[_22353 + _21741 + 164] = 0
                                call address(_21513) with:
                                     gas gas_remaining wei
                                    args mem[_21741 + 168 len _22353 - 4]
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
                                    mem[_21741 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_21741 + 196] == bool(mem[_21741 + 196])
                                        if not mem[_21741 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                emit 0xccbb695d: _8628, _21013, 1
                    else:
                        require arg5.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        _13379 = mem[ceil32(ceil32(arg5.length)) + 257]
                        _13380 = mem[ceil32(ceil32(arg5.length)) + 321]
                        _13382 = mem[ceil32(ceil32(arg5.length)) + 289]
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 232] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 236] = arg3
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 268] = _13380
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 300] = 160
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 396] = _10
                        idx = 0
                        s = ceil32(ceil32(arg5.length)) + 385
                        t = arg5.length + _4298 + ceil32(return_data.size) + 428
                        while idx < _10:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 332] = this.address
                        mem[arg5.length + _4298 + ceil32(return_data.size) + 364] = _13382
                        require ext_code.size(address(_13379))
                        call address(_13379).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _13380, Array(len=_10, data=mem[arg5.length + _4298 + ceil32(return_data.size) + 428 len 32 * _10]), address(this.address), _13382
                        if not ext_call.success:
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(arg2)):
                                revert with 0, 'Address: call to non-contract'
                            mem[arg5.length + _4298 + ceil32(return_data.size) + 396 len 96] = 0, mem[ceil32(ceil32(arg5.length)) + 141 len 20], arg3, 0
                            call address(arg2) with:
                                 gas gas_remaining wei
                                args (Mask(512, -288, 0, mem[ceil32(ceil32(arg5.length)) + 141 len 20], arg3, 0) << 288)
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
                                mem[arg5.length + _4298 + ceil32(return_data.size) + 428 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[arg5.length + _4298 + ceil32(return_data.size) + 428] == bool(mem[arg5.length + _4298 + ceil32(return_data.size) + 428])
                                    if not mem[arg5.length + _4298 + ceil32(return_data.size) + 428]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            emit 0xccbb695d: _8628, arg3, 3
                        else:
                            mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = arg5.length + _4298 + (2 * ceil32(return_data.size)) + 232
                            require return_data.size >= 32
                            _17250 = mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32
                            require mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require arg5.length + _4298 + ceil32(return_data.size) + return_data.size + 232 > arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 263
                            _17280 = mem[arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 232]
                            if mem[arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 232] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 232]) + 1 < 0 or arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 232]) + 233 > test266151307():
                                revert with 0, 65
                            mem[64] = arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + 232 len 4], Mask(224, 32, arg3) >> 32 + 232]) + 233
                            mem[arg5.length + _4298 + (2 * ceil32(return_data.size)) + 232] = _17280
                            require _17250 + (32 * _17280) + 32 <= return_data.size
                            mem[arg5.length + _4298 + (2 * ceil32(return_data.size)) + 264 len ceil32(32 * _17280)] = mem[arg5.length + _4298 + ceil32(return_data.size) + _17250 + 264 len ceil32(32 * _17280)]
                            if _17280 < 1:
                                revert with 0, 17
                            if _17280 - 1 >= _17280:
                                revert with 0, 50
                            _21018 = mem[(32 * _17280 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + 264]
                            if _10 < 1:
                                revert with 0, 17
                            if _10 - 1 >= _10:
                                revert with 0, 50
                            _21516 = mem[(32 * _10 - 1) + ceil32(ceil32(arg5.length)) + 385]
                            if mem[ceil32(ceil32(arg5.length)) + 193]:
                                if sub_457bfa2fAddress != mem[(32 * _10 - 1) + ceil32(ceil32(arg5.length)) + 397 len 20]:
                                    revert with 0, 'token mismatch'
                                require ext_code.size(sub_457bfa2fAddress)
                                call sub_457bfa2fAddress.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args mem[(32 * _17280 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + 264]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call mem[ceil32(ceil32(arg5.length)) + 141 len 20] with:
                                   value mem[(32 * _17280 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + 264] wei
                                     gas 50000 wei
                                if not ext_call.success:
                                    revert with 0, 'failed to send native'
                                emit 0xccbb695d: _8628, mem[(32 * _17280 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + 264], 1
                            else:
                                _21753 = mem[64]
                                mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                                mem[mem[64] + 68] = _21018
                                _21876 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_21753 + 100] = 32
                                mem[_21753 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(_21516)):
                                    revert with 0, 'Address: call to non-contract'
                                _22359 = mem[_21876]
                                mem[_21753 + 164 len ceil32(mem[_21876])] = mem[_21876 + 32 len ceil32(mem[_21876])]
                                if ceil32(_22359) > _22359:
                                    mem[_22359 + _21753 + 164] = 0
                                call address(_21516) with:
                                     gas gas_remaining wei
                                    args mem[_21753 + 168 len _22359 - 4]
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
                                    mem[_21753 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_21753 + 196] == bool(mem[_21753 + 196])
                                        if not mem[_21753 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                emit 0xccbb695d: _8628, _21018, 1
                else:
                    mem[arg5.length + _4298 + ceil32(return_data.size) + 232] = return_data.size
                    mem[arg5.length + _4298 + ceil32(return_data.size) + 264 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        _13195 = mem[ceil32(ceil32(arg5.length)) + 257]
                        _13196 = mem[ceil32(ceil32(arg5.length)) + 321]
                        _13198 = mem[ceil32(ceil32(arg5.length)) + 289]
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 237] = arg3
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 269] = _13196
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 301] = 160
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = _10
                        idx = 0
                        s = ceil32(ceil32(arg5.length)) + 385
                        t = arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429
                        while idx < _10:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = this.address
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 365] = _13198
                        require ext_code.size(address(_13195))
                        call address(_13195).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _13196, Array(len=_10, data=mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 32 * _10]), address(this.address), _13198
                        if not ext_call.success:
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(arg2)):
                                revert with 0, 'Address: call to non-contract'
                            mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 397 len 96] = 0, mem[ceil32(ceil32(arg5.length)) + 141 len 20], arg3, 0
                            call address(arg2) with:
                                 gas gas_remaining wei
                                args (Mask(512, -288, 0, mem[ceil32(ceil32(arg5.length)) + 141 len 20], arg3, 0) << 288)
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
                                mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429] == bool(mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429])
                                    if not mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            emit 0xccbb695d: _8628, arg3, 3
                        else:
                            mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233
                            require return_data.size >= 32
                            _17251 = mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32
                            require mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 233 > arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 264
                            _17282 = mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233]
                            if mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233]) + 1 < 0 or arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233]) + 234 > test266151307():
                                revert with 0, 65
                            mem[64] = arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233]) + 234
                            mem[arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233]
                            require _17251 + (32 * _17282) + 32 <= return_data.size
                            mem[arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265 len ceil32(32 * _17282)] = mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + _17251 + 265 len ceil32(32 * _17282)]
                            if _17282 < 1:
                                revert with 0, 17
                            if _17282 - 1 >= _17282:
                                revert with 0, 50
                            _21023 = mem[(32 * _17282 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265]
                            if _10 < 1:
                                revert with 0, 17
                            if _10 - 1 >= _10:
                                revert with 0, 50
                            _21519 = mem[(32 * _10 - 1) + ceil32(ceil32(arg5.length)) + 385]
                            if mem[ceil32(ceil32(arg5.length)) + 193]:
                                if sub_457bfa2fAddress != mem[(32 * _10 - 1) + ceil32(ceil32(arg5.length)) + 397 len 20]:
                                    revert with 0, 'token mismatch'
                                require ext_code.size(sub_457bfa2fAddress)
                                call sub_457bfa2fAddress.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args mem[(32 * _17282 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call mem[ceil32(ceil32(arg5.length)) + 141 len 20] with:
                                   value mem[(32 * _17282 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] wei
                                     gas 50000 wei
                                if not ext_call.success:
                                    revert with 0, 'failed to send native'
                                emit 0xccbb695d: _8628, mem[(32 * _17282 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265], 1
                            else:
                                _21765 = mem[64]
                                mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                                mem[mem[64] + 68] = _21023
                                _21883 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_21765 + 100] = 32
                                mem[_21765 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(_21519)):
                                    revert with 0, 'Address: call to non-contract'
                                _22365 = mem[_21883]
                                mem[_21765 + 164 len ceil32(mem[_21883])] = mem[_21883 + 32 len ceil32(mem[_21883])]
                                if ceil32(_22365) > _22365:
                                    mem[_22365 + _21765 + 164] = 0
                                call address(_21519) with:
                                     gas gas_remaining wei
                                    args mem[_21765 + 168 len _22365 - 4]
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
                                    mem[_21765 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_21765 + 196] == bool(mem[_21765 + 196])
                                        if not mem[_21765 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                emit 0xccbb695d: _8628, _21023, 1
                    else:
                        require return_data.size >= 32
                        require mem[arg5.length + _4298 + ceil32(return_data.size) + 264] == bool(mem[arg5.length + _4298 + ceil32(return_data.size) + 264])
                        if not mem[arg5.length + _4298 + ceil32(return_data.size) + 264]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        _13384 = mem[ceil32(ceil32(arg5.length)) + 257]
                        _13385 = mem[ceil32(ceil32(arg5.length)) + 321]
                        _13387 = mem[ceil32(ceil32(arg5.length)) + 289]
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 237] = arg3
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 269] = _13385
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 301] = 160
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = _10
                        idx = 0
                        s = ceil32(ceil32(arg5.length)) + 385
                        t = arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429
                        while idx < _10:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = this.address
                        mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 365] = _13387
                        require ext_code.size(address(_13384))
                        call address(_13384).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _13385, Array(len=_10, data=mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 32 * _10]), address(this.address), _13387
                        if not ext_call.success:
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(arg2)):
                                revert with 0, 'Address: call to non-contract'
                            mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 397 len 96] = 0, mem[ceil32(ceil32(arg5.length)) + 141 len 20], arg3, 0
                            call address(arg2) with:
                                 gas gas_remaining wei
                                args (Mask(512, -288, 0, mem[ceil32(ceil32(arg5.length)) + 141 len 20], arg3, 0) << 288)
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
                                mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429] == bool(mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429])
                                    if not mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 429]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            emit 0xccbb695d: _8628, arg3, 3
                        else:
                            mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233
                            require return_data.size >= 32
                            _17252 = mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32
                            require mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 233 > arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 264
                            _17284 = mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233]
                            if mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233]) + 1 < 0 or arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233]) + 234 > test266151307():
                                revert with 0, 65
                            mem[64] = arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233]) + 234
                            mem[arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + 233 len 4], Mask(224, 32, arg3) >> 32 + 233]
                            require _17252 + (32 * _17284) + 32 <= return_data.size
                            mem[arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265 len ceil32(32 * _17284)] = mem[arg5.length + _4298 + ceil32(return_data.size) + ceil32(return_data.size) + _17252 + 265 len ceil32(32 * _17284)]
                            if _17284 < 1:
                                revert with 0, 17
                            if _17284 - 1 >= _17284:
                                revert with 0, 50
                            _21028 = mem[(32 * _17284 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265]
                            if _10 < 1:
                                revert with 0, 17
                            if _10 - 1 >= _10:
                                revert with 0, 50
                            _21522 = mem[(32 * _10 - 1) + ceil32(ceil32(arg5.length)) + 385]
                            if mem[ceil32(ceil32(arg5.length)) + 193]:
                                if sub_457bfa2fAddress != mem[(32 * _10 - 1) + ceil32(ceil32(arg5.length)) + 397 len 20]:
                                    revert with 0, 'token mismatch'
                                require ext_code.size(sub_457bfa2fAddress)
                                call sub_457bfa2fAddress.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args mem[(32 * _17284 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call mem[ceil32(ceil32(arg5.length)) + 141 len 20] with:
                                   value mem[(32 * _17284 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] wei
                                     gas 50000 wei
                                if not ext_call.success:
                                    revert with 0, 'failed to send native'
                                emit 0xccbb695d: _8628, mem[(32 * _17284 - 1) + arg5.length + _4298 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265], 1
                            else:
                                _21777 = mem[64]
                                mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + 141 len 20]
                                mem[mem[64] + 68] = _21028
                                _21890 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_21777 + 100] = 32
                                mem[_21777 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(_21522)):
                                    revert with 0, 'Address: call to non-contract'
                                _22371 = mem[_21890]
                                mem[_21777 + 164 len ceil32(mem[_21890])] = mem[_21890 + 32 len ceil32(mem[_21890])]
                                if ceil32(_22371) > _22371:
                                    mem[_22371 + _21777 + 164] = 0
                                call address(_21522) with:
                                     gas gas_remaining wei
                                    args mem[_21777 + 168 len _22371 - 4]
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
                                    mem[_21777 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_21777 + 196] == bool(mem[_21777 + 196])
                                        if not mem[_21777 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                emit 0xccbb695d: _8628, _21028, 1
    return 1
}



}

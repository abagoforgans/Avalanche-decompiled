contract main {




// =====================  Runtime code  =====================


#
#  - acceptSwap(uint256 arg1)
#  - cancelSwap(uint256 arg1)
#
address owner;
uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 fee;

function paused() {
    return bool(stor2)
}

function owner() {
    return owner
}

function fee() {
    return fee
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

function sub_52492815(?) {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    fee = arg1
    emit 0xe8541851: arg1
    stor1 = 1
}

function Pause() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
    stor1 = 1
}

function Unpause() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor2:
        revert with 0, 'Pausable: not paused'
    stor2 = 0
    emit Unpaused(msg.sender);
    stor1 = 1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x4e2312e000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function withdrawFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tradescrow: transfer to the zero address'
    if eth.balance(this.address) < stor4:
        revert with 0, 17
    if eth.balance(this.address) - stor4 < 10^18:
        revert with 0, 17
    if eth.balance(this.address) + -stor4 - 10^18 < 0:
        revert with 0, 'Tradescrow: No available fees'
    if eth.balance(this.address) < stor4:
        revert with 0, 17
    if eth.balance(this.address) - stor4 < 10^18:
        revert with 0, 17
    call arg1 with:
       value eth.balance(this.address) + -stor4 - 10^18 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 97 < 96 or ceil32(32 * arg3.length) + 97 > test266151307():
        revert with 0, 65
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = arg3 + 36
    s = 128
    while idx < arg3 + (32 * arg3.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg4.length) + 98 < 97 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98 > test266151307():
        revert with 0, 65
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = arg4 + 36
    s = ceil32(32 * arg3.length) + 129
    while idx < arg4 + (32 * arg4.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 99 < 98 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function sub_b5cbcb88(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size + -cd[36] - 4 >= 128
    require ('cd', 36).length == address(('cd', 36).length)
    mem[96] = ('cd', 36).length
    mem[128] = ('cd', 36)[0]
    require ('cd', 36)[1] <= test266151307()
    require cd[36] + ('cd', 36)[1] + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36)[1] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 225 < 224 or ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 225 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 225
    mem[224] = cd[(cd[36] + ('cd', 36)[1] + 4)]
    require cd[36] + ('cd', 36)[1] + (96 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 36 <= calldata.size
    s = 256
    idx = cd[36] + ('cd', 36)[1] + 36
    while idx < cd[36] + ('cd', 36)[1] + (96 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 36:
        require calldata.size - idx >= 96
        _694 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[idx] == address(cd[idx])
        mem[_694] = cd[idx]
        mem[_694 + 32] = cd[(idx + 32)]
        mem[_694 + 64] = cd[(idx + 64)]
        mem[s] = _694
        s = s + 32
        idx = idx + 96
        continue 
    mem[160] = 224
    require ('cd', 36)[2] <= test266151307()
    require cd[36] + ('cd', 36)[2] + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36)[2] + 4)] > test266151307():
        revert with 0, 65
    _695 = mem[64]
    if mem[64] + ceil32(32 * cd[(cd[36] + ('cd', 36)[2] + 4)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[36] + ('cd', 36)[2] + 4)]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * cd[(cd[36] + ('cd', 36)[2] + 4)]) + 1
    mem[_695] = cd[(cd[36] + ('cd', 36)[2] + 4)]
    require cd[36] + ('cd', 36)[2] + (64 * cd[(cd[36] + ('cd', 36)[2] + 4)]) + 36 <= calldata.size
    idx = cd[36] + ('cd', 36)[2] + 36
    s = _695 + 32
    while idx < cd[36] + ('cd', 36)[2] + (64 * cd[(cd[36] + ('cd', 36)[2] + 4)]) + 36:
        require calldata.size - idx >= 64
        _1385 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[idx] == address(cd[idx])
        mem[_1385] = cd[idx]
        mem[_1385 + 32] = cd[(idx + 32)]
        mem[s] = _1385
        idx = idx + 64
        s = s + 32
        continue 
    mem[192] = _695
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if msg.value < fee:
        revert with 0, 'Tradescrow: Sent amount needs to be greater than or equal to the application fee'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor3++
    if mem[mem[160]]:
        _2075 = mem[mem[160]]
        idx = 0
        while idx < _2075:
            if idx >= mem[mem[160]]:
                revert with 0, 50
            if idx >= mem[mem[160]]:
                revert with 0, 50
            if 0 == mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                _2119 = mem[mem[(32 * idx) + mem[160] + 32]]
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                _2160 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                mem[mem[64]] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _2160
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                require ext_code.size(address(_2119))
                call address(_2119).safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _2160, 128, 0
            else:
                _2115 = mem[mem[(32 * idx) + mem[160] + 32]]
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                _2156 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                _2204 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _2156
                mem[mem[64] + 100] = _2204
                mem[mem[64] + 132] = 160
                mem[mem[64] + 164] = 0
                require ext_code.size(address(_2115))
                call address(_2115).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _2156, _2204, 160, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            _2075 = mem[mem[160]]
            idx = idx + 1
            continue 
        _2753 = mem[mem[192]]
        idx = 0
        while idx < _2753:
            if idx >= mem[mem[192]]:
                revert with 0, 50
            if this.address == msg.sender:
                _2776 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                _2802 = mem[mem[(32 * idx) + mem[192] + 32]]
                _2818 = mem[64]
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _2776
                _2836 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_2836 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2836 + 36 len 28]
                mem[64] = _2818 + 164
                mem[_2818 + 100] = 32
                mem[_2818 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(_2802)):
                    revert with 0, 'Address: call to non-contract'
                _2941 = mem[_2836]
                s = 0
                while s < _2941:
                    mem[s + _2818 + 164] = mem[s + _2836 + 32]
                    _2753 = mem[mem[192]]
                    s = s + 32
                    continue 
                if ceil32(_2941) > _2941:
                    mem[_2941 + _2818 + 164] = 0
                call address(_2802).mem[_2818 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_2818 + 168 len _2941 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_2818 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2818 + 168] = 32
                        mem[_2818 + 200] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2818 + 232] = mem[idx + _2818 + 132]
                            _2753 = mem[mem[192]]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_2818 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _2818 + ceil32(return_data.size) + 165
                    mem[_2818 + 164] = return_data.size
                    mem[_2818 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2818 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2818 + ceil32(return_data.size) + 169] = 32
                        mem[_2818 + ceil32(return_data.size) + 201] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2818 + ceil32(return_data.size) + 233] = mem[idx + _2818 + 132]
                            _2753 = mem[mem[192]]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_2818 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_2818 + 196] == bool(mem[_2818 + 196])
                        if not mem[_2818 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                _2772 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                _2800 = mem[mem[(32 * idx) + mem[192] + 32]]
                _2817 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = _2772
                _2834 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_2834 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2834 + 36 len 28]
                mem[64] = _2817 + 196
                mem[_2817 + 132] = 32
                mem[_2817 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(_2800)):
                    revert with 0, 'Address: call to non-contract'
                _2939 = mem[_2834]
                s = 0
                while s < _2939:
                    mem[s + _2817 + 196] = mem[s + _2834 + 32]
                    _2753 = mem[mem[192]]
                    s = s + 32
                    continue 
                if ceil32(_2939) > _2939:
                    mem[_2939 + _2817 + 196] = 0
                call address(_2800).mem[_2817 + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[_2817 + 200 len _2939 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_2817 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2817 + 200] = 32
                        mem[_2817 + 232] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2817 + 264] = mem[idx + _2817 + 164]
                            _2753 = mem[mem[192]]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_2817 + 264]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _2817 + ceil32(return_data.size) + 197
                    mem[_2817 + 196] = return_data.size
                    mem[_2817 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2817 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2817 + ceil32(return_data.size) + 201] = 32
                        mem[_2817 + ceil32(return_data.size) + 233] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2817 + ceil32(return_data.size) + 265] = mem[idx + _2817 + 164]
                            _2753 = mem[mem[192]]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_2817 + ceil32(return_data.size) + 265]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_2817 + 228] == bool(mem[_2817 + 228])
                        if not mem[_2817 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 0, 17
            _2753 = mem[mem[192]]
            idx = idx + 1
            continue 
        mem[0] = stor3
        mem[32] = 6
        stor6[stor3].field_2048 = 1
        stor6[stor3].field_0 = msg.sender or Mask(96, 160, stor6[stor3].field_0)
        _3341 = mem[mem[160]]
        idx = 0
        while idx < _3341:
            if idx >= mem[mem[160]]:
                revert with 0, 50
            stor6[stor3].field_512++
            mem[0] = sha3(stor3, 6) + 2
            stor[(3 * stor6[stor3].field_512) + ('array', 2, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[160] + 32] + 12 len 20]
            stor[(3 * stor6[stor3].field_512) + ('array', 2, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
            stor[(3 * stor6[stor3].field_512) + ('array', 2, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_512 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
            if idx == -1:
                revert with 0, 17
            _3341 = mem[mem[160]]
            idx = idx + 1
            continue 
        _3812 = mem[mem[192]]
        idx = 0
        while idx < _3812:
            if idx >= mem[mem[192]]:
                revert with 0, 50
            stor6[stor3].field_768++
            mem[0] = sha3(stor3, 6) + 3
            stor[(2 * stor6[stor3].field_768) + ('array', 3, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[192] + 32] + 12 len 20]
            stor[(2 * stor6[stor3].field_768) + ('array', 3, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
            if idx == -1:
                revert with 0, 17
            _3812 = mem[mem[192]]
            idx = idx + 1
            continue 
        if msg.value <= fee:
            stor6[stor3].field_1024 = address(cd[4])
            _3847 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[108 len 20]
            mem[mem[64] + 64] = mem[128]
            mem[mem[64] + 96] = 128
            _3865 = mem[mem[160]]
            mem[mem[64] + 160] = mem[mem[160]]
            s = mem[64] + 192
            idx = 0
            t = mem[160] + 32
            while idx < _3865:
                _4010 = mem[t]
                mem[s] = mem[mem[t] + 12 len 20]
                mem[s + 32] = mem[_4010 + 32]
                mem[s + 64] = mem[_4010 + 64]
                s = s + 96
                idx = idx + 1
                t = t + 32
                continue 
            _4009 = mem[192]
            mem[_3847 + 128] = (96 * _3865) + 160
            _4039 = mem[_4009]
            mem[_3847 + (96 * _3865) + 192] = mem[_4009]
            idx = 0
            s = _4009 + 32
            t = _3847 + (96 * _3865) + 224
            while idx < _4039:
                _4081 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_4081 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            emit 0xe81763bf: mem[mem[64] len _3847 + (96 * _3865) + (64 * _4039) + -mem[64] + 224], msg.sender, address(cd[4]), stor3
        else:
            if msg.value < fee:
                revert with 0, 17
            stor6[stor3].field_256 = msg.value - fee
            if stor4 > !(msg.value - fee):
                revert with 0, 17
            stor4 = stor4 + msg.value - fee
            stor6[stor3].field_1024 = address(cd[4])
            _3949 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[108 len 20]
            mem[mem[64] + 64] = mem[128]
            mem[mem[64] + 96] = 128
            _3956 = mem[mem[160]]
            mem[mem[64] + 160] = mem[mem[160]]
            s = mem[64] + 192
            idx = 0
            t = mem[160] + 32
            while idx < _3956:
                _4015 = mem[t]
                mem[s] = mem[mem[t] + 12 len 20]
                mem[s + 32] = mem[_4015 + 32]
                mem[s + 64] = mem[_4015 + 64]
                s = s + 96
                idx = idx + 1
                t = t + 32
                continue 
            _4014 = mem[192]
            mem[_3949 + 128] = (96 * _3956) + 160
            _4040 = mem[_4014]
            mem[_3949 + (96 * _3956) + 192] = mem[_4014]
            idx = 0
            s = _4014 + 32
            t = _3949 + (96 * _3956) + 224
            while idx < _4040:
                _4084 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_4084 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            emit 0xe81763bf: mem[mem[64] len _3949 + (96 * _3956) + (64 * _4040) + -mem[64] + 224], msg.sender, address(cd[4]), stor3
    else:
        if mem[_695]:
            _2077 = mem[mem[160]]
            idx = 0
            while idx < _2077:
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                if 0 == mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                    _2131 = mem[mem[(32 * idx) + mem[160] + 32]]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _2177 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    mem[mem[64]] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _2177
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(address(_2131))
                    call address(_2131).safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _2177, 128, 0
                else:
                    _2127 = mem[mem[(32 * idx) + mem[160] + 32]]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _2173 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _2214 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _2173
                    mem[mem[64] + 100] = _2214
                    mem[mem[64] + 132] = 160
                    mem[mem[64] + 164] = 0
                    require ext_code.size(address(_2127))
                    call address(_2127).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _2173, _2214, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                _2077 = mem[mem[160]]
                idx = idx + 1
                continue 
            _2755 = mem[mem[192]]
            idx = 0
            while idx < _2755:
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                if this.address == msg.sender:
                    _2785 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    _2808 = mem[mem[(32 * idx) + mem[192] + 32]]
                    _2822 = mem[64]
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _2785
                    _2847 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_2847 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2847 + 36 len 28]
                    mem[64] = _2822 + 164
                    mem[_2822 + 100] = 32
                    mem[_2822 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_2808)):
                        revert with 0, 'Address: call to non-contract'
                    _2946 = mem[_2847]
                    s = 0
                    while s < _2946:
                        mem[s + _2822 + 164] = mem[s + _2847 + 32]
                        _2755 = mem[mem[192]]
                        s = s + 32
                        continue 
                    if ceil32(_2946) > _2946:
                        mem[_2946 + _2822 + 164] = 0
                    call address(_2808).mem[_2822 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_2822 + 168 len _2946 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_2822 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2822 + 168] = 32
                            mem[_2822 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2822 + 232] = mem[idx + _2822 + 132]
                                _2755 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2822 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _2822 + ceil32(return_data.size) + 165
                        mem[_2822 + 164] = return_data.size
                        mem[_2822 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2822 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2822 + ceil32(return_data.size) + 169] = 32
                            mem[_2822 + ceil32(return_data.size) + 201] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2822 + ceil32(return_data.size) + 233] = mem[idx + _2822 + 132]
                                _2755 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2822 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2822 + 196] == bool(mem[_2822 + 196])
                            if not mem[_2822 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    _2781 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    _2806 = mem[mem[(32 * idx) + mem[192] + 32]]
                    _2821 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = _2781
                    _2845 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_2845 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2845 + 36 len 28]
                    mem[64] = _2821 + 196
                    mem[_2821 + 132] = 32
                    mem[_2821 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_2806)):
                        revert with 0, 'Address: call to non-contract'
                    _2944 = mem[_2845]
                    s = 0
                    while s < _2944:
                        mem[s + _2821 + 196] = mem[s + _2845 + 32]
                        _2755 = mem[mem[192]]
                        s = s + 32
                        continue 
                    if ceil32(_2944) > _2944:
                        mem[_2944 + _2821 + 196] = 0
                    call address(_2806).mem[_2821 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_2821 + 200 len _2944 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_2821 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2821 + 200] = 32
                            mem[_2821 + 232] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2821 + 264] = mem[idx + _2821 + 164]
                                _2755 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2821 + 264]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _2821 + ceil32(return_data.size) + 197
                        mem[_2821 + 196] = return_data.size
                        mem[_2821 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2821 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2821 + ceil32(return_data.size) + 201] = 32
                            mem[_2821 + ceil32(return_data.size) + 233] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2821 + ceil32(return_data.size) + 265] = mem[idx + _2821 + 164]
                                _2755 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2821 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2821 + 228] == bool(mem[_2821 + 228])
                            if not mem[_2821 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if idx == -1:
                    revert with 0, 17
                _2755 = mem[mem[192]]
                idx = idx + 1
                continue 
            mem[0] = stor3
            mem[32] = 6
            stor6[stor3].field_2048 = 1
            stor6[stor3].field_0 = msg.sender or Mask(96, 160, stor6[stor3].field_0)
            _3343 = mem[mem[160]]
            idx = 0
            while idx < _3343:
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                stor6[stor3].field_512++
                mem[0] = sha3(stor3, 6) + 2
                stor[(3 * stor6[stor3].field_512) + ('array', 2, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[160] + 32] + 12 len 20]
                stor[(3 * stor6[stor3].field_512) + ('array', 2, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                stor[(3 * stor6[stor3].field_512) + ('array', 2, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_512 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                if idx == -1:
                    revert with 0, 17
                _3343 = mem[mem[160]]
                idx = idx + 1
                continue 
            _3814 = mem[mem[192]]
            idx = 0
            while idx < _3814:
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                stor6[stor3].field_768++
                mem[0] = sha3(stor3, 6) + 3
                stor[(2 * stor6[stor3].field_768) + ('array', 3, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[192] + 32] + 12 len 20]
                stor[(2 * stor6[stor3].field_768) + ('array', 3, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                if idx == -1:
                    revert with 0, 17
                _3814 = mem[mem[192]]
                idx = idx + 1
                continue 
            if msg.value <= fee:
                stor6[stor3].field_1024 = address(cd[4])
                _3852 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[108 len 20]
                mem[mem[64] + 64] = mem[128]
                mem[mem[64] + 96] = 128
                _3869 = mem[mem[160]]
                mem[mem[64] + 160] = mem[mem[160]]
                s = mem[64] + 192
                idx = 0
                t = mem[160] + 32
                while idx < _3869:
                    _4020 = mem[t]
                    mem[s] = mem[mem[t] + 12 len 20]
                    mem[s + 32] = mem[_4020 + 32]
                    mem[s + 64] = mem[_4020 + 64]
                    s = s + 96
                    idx = idx + 1
                    t = t + 32
                    continue 
                _4019 = mem[192]
                mem[_3852 + 128] = (96 * _3869) + 160
                _4041 = mem[_4019]
                mem[_3852 + (96 * _3869) + 192] = mem[_4019]
                idx = 0
                s = _4019 + 32
                t = _3852 + (96 * _3869) + 224
                while idx < _4041:
                    _4087 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_4087 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                emit 0xe81763bf: mem[mem[64] len _3852 + (96 * _3869) + (64 * _4041) + -mem[64] + 224], msg.sender, address(cd[4]), stor3
            else:
                if msg.value < fee:
                    revert with 0, 17
                stor6[stor3].field_256 = msg.value - fee
                if stor4 > !(msg.value - fee):
                    revert with 0, 17
                stor4 = stor4 + msg.value - fee
                stor6[stor3].field_1024 = address(cd[4])
                _3950 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[108 len 20]
                mem[mem[64] + 64] = mem[128]
                mem[mem[64] + 96] = 128
                _3961 = mem[mem[160]]
                mem[mem[64] + 160] = mem[mem[160]]
                s = mem[64] + 192
                idx = 0
                t = mem[160] + 32
                while idx < _3961:
                    _4025 = mem[t]
                    mem[s] = mem[mem[t] + 12 len 20]
                    mem[s + 32] = mem[_4025 + 32]
                    mem[s + 64] = mem[_4025 + 64]
                    s = s + 96
                    idx = idx + 1
                    t = t + 32
                    continue 
                _4024 = mem[192]
                mem[_3950 + 128] = (96 * _3961) + 160
                _4042 = mem[_4024]
                mem[_3950 + (96 * _3961) + 192] = mem[_4024]
                idx = 0
                s = _4024 + 32
                t = _3950 + (96 * _3961) + 224
                while idx < _4042:
                    _4090 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_4090 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                emit 0xe81763bf: mem[mem[64] len _3950 + (96 * _3961) + (64 * _4042) + -mem[64] + 224], msg.sender, address(cd[4]), stor3
        else:
            _2079 = mem[mem[160]]
            idx = 0
            while idx < _2079:
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                if 0 == mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                    _2143 = mem[mem[(32 * idx) + mem[160] + 32]]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _2194 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    mem[mem[64]] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _2194
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(address(_2143))
                    call address(_2143).safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _2194, 128, 0
                else:
                    _2139 = mem[mem[(32 * idx) + mem[160] + 32]]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _2190 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _2224 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _2190
                    mem[mem[64] + 100] = _2224
                    mem[mem[64] + 132] = 160
                    mem[mem[64] + 164] = 0
                    require ext_code.size(address(_2139))
                    call address(_2139).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _2190, _2224, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                _2079 = mem[mem[160]]
                idx = idx + 1
                continue 
            _2757 = mem[mem[192]]
            idx = 0
            while idx < _2757:
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                if this.address == msg.sender:
                    _2794 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    _2814 = mem[mem[(32 * idx) + mem[192] + 32]]
                    _2826 = mem[64]
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _2794
                    _2858 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_2858 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2858 + 36 len 28]
                    mem[64] = _2826 + 164
                    mem[_2826 + 100] = 32
                    mem[_2826 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_2814)):
                        revert with 0, 'Address: call to non-contract'
                    _2951 = mem[_2858]
                    s = 0
                    while s < _2951:
                        mem[s + _2826 + 164] = mem[s + _2858 + 32]
                        _2757 = mem[mem[192]]
                        s = s + 32
                        continue 
                    if ceil32(_2951) > _2951:
                        mem[_2951 + _2826 + 164] = 0
                    call address(_2814).mem[_2826 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_2826 + 168 len _2951 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_2826 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2826 + 168] = 32
                            mem[_2826 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2826 + 232] = mem[idx + _2826 + 132]
                                _2757 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2826 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _2826 + ceil32(return_data.size) + 165
                        mem[_2826 + 164] = return_data.size
                        mem[_2826 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2826 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2826 + ceil32(return_data.size) + 169] = 32
                            mem[_2826 + ceil32(return_data.size) + 201] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2826 + ceil32(return_data.size) + 233] = mem[idx + _2826 + 132]
                                _2757 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2826 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2826 + 196] == bool(mem[_2826 + 196])
                            if not mem[_2826 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    _2790 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    _2812 = mem[mem[(32 * idx) + mem[192] + 32]]
                    _2825 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = _2790
                    _2856 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_2856 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2856 + 36 len 28]
                    mem[64] = _2825 + 196
                    mem[_2825 + 132] = 32
                    mem[_2825 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_2812)):
                        revert with 0, 'Address: call to non-contract'
                    _2949 = mem[_2856]
                    s = 0
                    while s < _2949:
                        mem[s + _2825 + 196] = mem[s + _2856 + 32]
                        _2757 = mem[mem[192]]
                        s = s + 32
                        continue 
                    if ceil32(_2949) > _2949:
                        mem[_2949 + _2825 + 196] = 0
                    call address(_2812).mem[_2825 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_2825 + 200 len _2949 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_2825 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2825 + 200] = 32
                            mem[_2825 + 232] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2825 + 264] = mem[idx + _2825 + 164]
                                _2757 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2825 + 264]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _2825 + ceil32(return_data.size) + 197
                        mem[_2825 + 196] = return_data.size
                        mem[_2825 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2825 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2825 + ceil32(return_data.size) + 201] = 32
                            mem[_2825 + ceil32(return_data.size) + 233] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2825 + ceil32(return_data.size) + 265] = mem[idx + _2825 + 164]
                                _2757 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2825 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2825 + 228] == bool(mem[_2825 + 228])
                            if not mem[_2825 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if idx == -1:
                    revert with 0, 17
                _2757 = mem[mem[192]]
                idx = idx + 1
                continue 
            mem[0] = stor3
            mem[32] = 6
            stor6[stor3].field_2048 = 1
            stor6[stor3].field_0 = msg.sender or Mask(96, 160, stor6[stor3].field_0)
            _3345 = mem[mem[160]]
            idx = 0
            while idx < _3345:
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                stor6[stor3].field_512++
                mem[0] = sha3(stor3, 6) + 2
                stor[(3 * stor6[stor3].field_512) + ('array', 2, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[160] + 32] + 12 len 20]
                stor[(3 * stor6[stor3].field_512) + ('array', 2, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                stor[(3 * stor6[stor3].field_512) + ('array', 2, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_512 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                if idx == -1:
                    revert with 0, 17
                _3345 = mem[mem[160]]
                idx = idx + 1
                continue 
            _3816 = mem[mem[192]]
            idx = 0
            while idx < _3816:
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                stor6[stor3].field_768++
                mem[0] = sha3(stor3, 6) + 3
                stor[(2 * stor6[stor3].field_768) + ('array', 3, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[192] + 32] + 12 len 20]
                stor[(2 * stor6[stor3].field_768) + ('array', 3, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                if idx == -1:
                    revert with 0, 17
                _3816 = mem[mem[192]]
                idx = idx + 1
                continue 
            if msg.value <= fee:
                stor6[stor3].field_1024 = address(cd[4])
                _3857 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[108 len 20]
                mem[mem[64] + 64] = mem[128]
                mem[mem[64] + 96] = 128
                _3873 = mem[mem[160]]
                mem[mem[64] + 160] = mem[mem[160]]
                s = mem[64] + 192
                idx = 0
                t = mem[160] + 32
                while idx < _3873:
                    _4030 = mem[t]
                    mem[s] = mem[mem[t] + 12 len 20]
                    mem[s + 32] = mem[_4030 + 32]
                    mem[s + 64] = mem[_4030 + 64]
                    s = s + 96
                    idx = idx + 1
                    t = t + 32
                    continue 
                _4029 = mem[192]
                mem[_3857 + 128] = (96 * _3873) + 160
                _4043 = mem[_4029]
                mem[_3857 + (96 * _3873) + 192] = mem[_4029]
                idx = 0
                s = _4029 + 32
                t = _3857 + (96 * _3873) + 224
                while idx < _4043:
                    _4093 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_4093 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                emit 0xe81763bf: mem[mem[64] len _3857 + (96 * _3873) + (64 * _4043) + -mem[64] + 224], msg.sender, address(cd[4]), stor3
            else:
                if msg.value < fee:
                    revert with 0, 17
                stor6[stor3].field_256 = msg.value - fee
                if stor4 > !(msg.value - fee):
                    revert with 0, 17
                stor4 = stor4 + msg.value - fee
                stor6[stor3].field_1024 = address(cd[4])
                _3951 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[108 len 20]
                mem[mem[64] + 64] = mem[128]
                mem[mem[64] + 96] = 128
                _3966 = mem[mem[160]]
                mem[mem[64] + 160] = mem[mem[160]]
                s = mem[64] + 192
                idx = 0
                t = mem[160] + 32
                while idx < _3966:
                    _4035 = mem[t]
                    mem[s] = mem[mem[t] + 12 len 20]
                    mem[s + 32] = mem[_4035 + 32]
                    mem[s + 64] = mem[_4035 + 64]
                    s = s + 96
                    idx = idx + 1
                    t = t + 32
                    continue 
                _4034 = mem[192]
                mem[_3951 + 128] = (96 * _3966) + 160
                _4044 = mem[_4034]
                mem[_3951 + (96 * _3966) + 192] = mem[_4034]
                idx = 0
                s = _4034 + 32
                t = _3951 + (96 * _3966) + 224
                while idx < _4044:
                    _4096 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_4096 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                emit 0xe81763bf: mem[mem[64] len _3951 + (96 * _3966) + (64 * _4044) + -mem[64] + 224], msg.sender, address(cd[4]), stor3
    stor1 = 1
    return stor3
}

function sub_7cb1774d(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require calldata.size + -cd[36] - 4 >= 128
    require ('cd', 36).length == address(('cd', 36).length)
    mem[96] = ('cd', 36).length
    mem[128] = ('cd', 36)[0]
    require ('cd', 36)[1] <= test266151307()
    require cd[36] + ('cd', 36)[1] + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36)[1] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 225 < 224 or ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 225 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 225
    mem[224] = cd[(cd[36] + ('cd', 36)[1] + 4)]
    require cd[36] + ('cd', 36)[1] + (96 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 36 <= calldata.size
    s = 256
    idx = cd[36] + ('cd', 36)[1] + 36
    while idx < cd[36] + ('cd', 36)[1] + (96 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 36:
        require calldata.size - idx >= 96
        _1420 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[idx] == address(cd[idx])
        mem[_1420] = cd[idx]
        mem[_1420 + 32] = cd[(idx + 32)]
        mem[_1420 + 64] = cd[(idx + 64)]
        mem[s] = _1420
        s = s + 32
        idx = idx + 96
        continue 
    mem[160] = 224
    require ('cd', 36)[2] <= test266151307()
    require cd[36] + ('cd', 36)[2] + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36)[2] + 4)] > test266151307():
        revert with 0, 65
    _1421 = mem[64]
    if mem[64] + ceil32(32 * cd[(cd[36] + ('cd', 36)[2] + 4)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[36] + ('cd', 36)[2] + 4)]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * cd[(cd[36] + ('cd', 36)[2] + 4)]) + 1
    mem[_1421] = cd[(cd[36] + ('cd', 36)[2] + 4)]
    require cd[36] + ('cd', 36)[2] + (64 * cd[(cd[36] + ('cd', 36)[2] + 4)]) + 36 <= calldata.size
    idx = cd[36] + ('cd', 36)[2] + 36
    s = _1421 + 32
    while idx < cd[36] + ('cd', 36)[2] + (64 * cd[(cd[36] + ('cd', 36)[2] + 4)]) + 36:
        require calldata.size - idx >= 64
        _2837 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[idx] == address(cd[idx])
        mem[_2837] = cd[idx]
        mem[_2837 + 32] = cd[(idx + 32)]
        mem[s] = _2837
        idx = idx + 64
        s = s + 32
        continue 
    mem[192] = _1421
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if msg.value < fee:
        revert with 0, 'Tradescrow: Sent amount needs to be greater than or equal to the application fee'
    if stor2:
        revert with 0, 'Pausable: paused'
    if stor6[cd[4]].field_1024 != msg.sender:
        revert with 0, 'Tradescrow: caller is not swap target'
    mem[0] = cd[4]
    mem[32] = 6
    _2847 = mem[64]
    mem[64] = mem[64] + 128
    mem[_2847] = stor6[cd[4]].field_1024
    mem[_2847 + 32] = stor6[cd[4]].field_1280
    _2848 = mem[64]
    mem[64] = mem[64] + (32 * stor6[cd[4]].field_1536) + 32
    mem[_2848] = stor6[cd[4]].field_1536
    if not stor6[cd[4]].field_1536:
        mem[_2847 + 64] = _2848
        _2850 = mem[64]
        mem[64] = mem[64] + (32 * stor6[cd[4]].field_1792) + 32
        mem[_2850] = stor6[cd[4]].field_1792
        s = _2850 + 32
        idx = 0
        while idx < stor6[cd[4]].field_1792:
            mem[0] = sha3(cd[4], 6) + 7
            _4253 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4253] = stor[('array', 7, ('map', ('cd', 4), ('name', 'stor6', 6))) + (2 * idx)].field_0
            mem[_4253 + 32] = stor[('array', 7, ('map', ('cd', 4), ('name', 'stor6', 6))) + (2 * idx)].field_256
            mem[s] = _4253
            s = s + 32
            idx = idx + 1
            continue 
        mem[_2847 + 96] = _2850
        if mem[mem[_2847 + 64]]:
            revert with 0, 'Tradescrow: swap already initiated'
        if mem[_2850]:
            revert with 0, 'Tradescrow: swap already initiated'
        if mem[_2847 + 32]:
            revert with 0, 'Tradescrow: swap already initiated'
        mem[0] = cd[4]
        mem[32] = 6
        if stor6[cd[4]].field_2048 != 1:
            revert with 0, 'Tradescrow: Swap closed. Only user cancel enabled'
        if mem[mem[160]]:
            _5652 = mem[mem[160]]
            idx = 0
            while idx < _5652:
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                if 0 == mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                    _5702 = mem[mem[(32 * idx) + mem[160] + 32]]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _5744 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    mem[mem[64]] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _5744
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(address(_5702))
                    call address(_5702).safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _5744, 128, 0
                else:
                    _5698 = mem[mem[(32 * idx) + mem[160] + 32]]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _5740 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _5792 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _5740
                    mem[mem[64] + 100] = _5792
                    mem[mem[64] + 132] = 160
                    mem[mem[64] + 164] = 0
                    require ext_code.size(address(_5698))
                    call address(_5698).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _5740, _5792, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                _5652 = mem[mem[160]]
                idx = idx + 1
                continue 
            _7028 = mem[mem[192]]
            idx = 0
            while idx < _7028:
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                if this.address == msg.sender:
                    _7076 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    _7117 = mem[mem[(32 * idx) + mem[192] + 32]]
                    _7176 = mem[64]
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _7076
                    _7254 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_7254 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_7254 + 36 len 28]
                    mem[64] = _7176 + 164
                    mem[_7176 + 100] = 32
                    mem[_7176 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_7117)):
                        revert with 0, 'Address: call to non-contract'
                    _7470 = mem[_7254]
                    s = 0
                    while s < _7470:
                        mem[s + _7176 + 164] = mem[s + _7254 + 32]
                        _7028 = mem[mem[192]]
                        s = s + 32
                        continue 
                    if ceil32(_7470) > _7470:
                        mem[_7470 + _7176 + 164] = 0
                    call address(_7117).mem[_7176 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_7176 + 168 len _7470 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_7176 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7176 + 168] = 32
                            mem[_7176 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _7176 + 232] = mem[idx + _7176 + 132]
                                _7028 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_7176 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _7176 + ceil32(return_data.size) + 165
                        mem[_7176 + 164] = return_data.size
                        mem[_7176 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_7176 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7176 + ceil32(return_data.size) + 169] = 32
                            mem[_7176 + ceil32(return_data.size) + 201] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _7176 + ceil32(return_data.size) + 233] = mem[idx + _7176 + 132]
                                _7028 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_7176 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_7176 + 196] == bool(mem[_7176 + 196])
                            if not mem[_7176 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    _7072 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    _7115 = mem[mem[(32 * idx) + mem[192] + 32]]
                    _7175 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = _7072
                    _7252 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_7252 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_7252 + 36 len 28]
                    mem[64] = _7175 + 196
                    mem[_7175 + 132] = 32
                    mem[_7175 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_7115)):
                        revert with 0, 'Address: call to non-contract'
                    _7468 = mem[_7252]
                    s = 0
                    while s < _7468:
                        mem[s + _7175 + 196] = mem[s + _7252 + 32]
                        _7028 = mem[mem[192]]
                        s = s + 32
                        continue 
                    if ceil32(_7468) > _7468:
                        mem[_7468 + _7175 + 196] = 0
                    call address(_7115).mem[_7175 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_7175 + 200 len _7468 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_7175 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7175 + 200] = 32
                            mem[_7175 + 232] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _7175 + 264] = mem[idx + _7175 + 164]
                                _7028 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_7175 + 264]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _7175 + ceil32(return_data.size) + 197
                        mem[_7175 + 196] = return_data.size
                        mem[_7175 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_7175 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7175 + ceil32(return_data.size) + 201] = 32
                            mem[_7175 + ceil32(return_data.size) + 233] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _7175 + ceil32(return_data.size) + 265] = mem[idx + _7175 + 164]
                                _7028 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_7175 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_7175 + 228] == bool(mem[_7175 + 228])
                            if not mem[_7175 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if idx == -1:
                    revert with 0, 17
                _7028 = mem[mem[192]]
                idx = idx + 1
                continue 
            _8294 = mem[mem[160]]
            idx = 0
            while idx < _8294:
                mem[0] = cd[4]
                mem[32] = 6
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                stor6[cd[4]].field_1536++
                mem[0] = sha3(cd[4], 6) + 6
                stor[(3 * stor6[cd[4]].field_1536) + ('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[160] + 32] + 12 len 20]
                stor[(3 * stor6[cd[4]].field_1536) + ('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                stor[(3 * stor6[cd[4]].field_1536) + ('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_512 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                if idx == -1:
                    revert with 0, 17
                _8294 = mem[mem[160]]
                idx = idx + 1
                continue 
            _9356 = mem[mem[192]]
            idx = 0
            while idx < _9356:
                mem[0] = cd[4]
                mem[32] = 6
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                stor6[cd[4]].field_1792++
                mem[0] = sha3(cd[4], 6) + 7
                stor[(2 * stor6[cd[4]].field_1792) + ('array', 7, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[192] + 32] + 12 len 20]
                stor[(2 * stor6[cd[4]].field_1792) + ('array', 7, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                if idx == -1:
                    revert with 0, 17
                _9356 = mem[mem[192]]
                idx = idx + 1
                continue 
            if msg.value <= fee:
                mem[0] = cd[4]
                mem[32] = 6
                _9416 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[108 len 20]
                mem[mem[64] + 64] = mem[128]
                mem[mem[64] + 96] = 128
                _9457 = mem[mem[160]]
                mem[mem[64] + 160] = mem[mem[160]]
                s = mem[64] + 192
                idx = 0
                t = mem[160] + 32
                while idx < _9457:
                    _10034 = mem[t]
                    mem[s] = mem[mem[t] + 12 len 20]
                    mem[s + 32] = mem[_10034 + 32]
                    mem[s + 64] = mem[_10034 + 64]
                    s = s + 96
                    idx = idx + 1
                    t = t + 32
                    continue 
                _10033 = mem[192]
                mem[_9416 + 128] = (96 * _9457) + 160
                _10096 = mem[_10033]
                mem[_9416 + (96 * _9457) + 192] = mem[_10033]
                idx = 0
                s = _10033 + 32
                t = _9416 + (96 * _9457) + 224
                while idx < _10096:
                    _10285 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_10285 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                emit 0x9290cd76: mem[mem[64] len _9416 + (96 * _9457) + (64 * _10096) + -mem[64] + 224], msg.sender, stor6[cd[4]].field_0, cd[4]
            else:
                if msg.value < fee:
                    revert with 0, 17
                stor6[cd[4]].field_1280 = msg.value - fee
                if stor4 > !(msg.value - fee):
                    revert with 0, 17
                stor4 = stor4 + msg.value - fee
                mem[0] = cd[4]
                mem[32] = 6
                _9653 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[108 len 20]
                mem[mem[64] + 64] = mem[128]
                mem[mem[64] + 96] = 128
                _9710 = mem[mem[160]]
                mem[mem[64] + 160] = mem[mem[160]]
                s = mem[64] + 192
                idx = 0
                t = mem[160] + 32
                while idx < _9710:
                    _10039 = mem[t]
                    mem[s] = mem[mem[t] + 12 len 20]
                    mem[s + 32] = mem[_10039 + 32]
                    mem[s + 64] = mem[_10039 + 64]
                    s = s + 96
                    idx = idx + 1
                    t = t + 32
                    continue 
                _10038 = mem[192]
                mem[_9653 + 128] = (96 * _9710) + 160
                _10097 = mem[_10038]
                mem[_9653 + (96 * _9710) + 192] = mem[_10038]
                idx = 0
                s = _10038 + 32
                t = _9653 + (96 * _9710) + 224
                while idx < _10097:
                    _10288 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_10288 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                emit 0x9290cd76: mem[mem[64] len _9653 + (96 * _9710) + (64 * _10097) + -mem[64] + 224], msg.sender, stor6[cd[4]].field_0, cd[4]
        else:
            if mem[mem[192]]:
                _5654 = mem[mem[160]]
                idx = 0
                while idx < _5654:
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    if 0 == mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                        _5714 = mem[mem[(32 * idx) + mem[160] + 32]]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _5762 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        mem[mem[64]] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _5762
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_5714))
                        call address(_5714).safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _5762, 128, 0
                    else:
                        _5710 = mem[mem[(32 * idx) + mem[160] + 32]]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _5758 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _5803 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _5758
                        mem[mem[64] + 100] = _5803
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        require ext_code.size(address(_5710))
                        call address(_5710).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _5758, _5803, 160, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    _5654 = mem[mem[160]]
                    idx = idx + 1
                    continue 
                _7030 = mem[mem[192]]
                idx = 0
                while idx < _7030:
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    if this.address == msg.sender:
                        _7086 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                        if idx >= mem[mem[192]]:
                            revert with 0, 50
                        _7124 = mem[mem[(32 * idx) + mem[192] + 32]]
                        _7185 = mem[64]
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _7086
                        _7261 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_7261 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_7261 + 36 len 28]
                        mem[64] = _7185 + 164
                        mem[_7185 + 100] = 32
                        mem[_7185 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_7124)):
                            revert with 0, 'Address: call to non-contract'
                        _7474 = mem[_7261]
                        s = 0
                        while s < _7474:
                            mem[s + _7185 + 164] = mem[s + _7261 + 32]
                            _7030 = mem[mem[192]]
                            s = s + 32
                            continue 
                        if ceil32(_7474) > _7474:
                            mem[_7474 + _7185 + 164] = 0
                        call address(_7124).mem[_7185 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_7185 + 168 len _7474 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_7185 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7185 + 168] = 32
                                mem[_7185 + 200] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _7185 + 232] = mem[idx + _7185 + 132]
                                    _7030 = mem[mem[192]]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_7185 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _7185 + ceil32(return_data.size) + 165
                            mem[_7185 + 164] = return_data.size
                            mem[_7185 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_7185 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7185 + ceil32(return_data.size) + 169] = 32
                                mem[_7185 + ceil32(return_data.size) + 201] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _7185 + ceil32(return_data.size) + 233] = mem[idx + _7185 + 132]
                                    _7030 = mem[mem[192]]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_7185 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_7185 + 196] == bool(mem[_7185 + 196])
                                if not mem[_7185 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        _7082 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                        if idx >= mem[mem[192]]:
                            revert with 0, 50
                        _7122 = mem[mem[(32 * idx) + mem[192] + 32]]
                        _7184 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = _7082
                        _7259 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_7259 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_7259 + 36 len 28]
                        mem[64] = _7184 + 196
                        mem[_7184 + 132] = 32
                        mem[_7184 + 164] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_7122)):
                            revert with 0, 'Address: call to non-contract'
                        _7472 = mem[_7259]
                        s = 0
                        while s < _7472:
                            mem[s + _7184 + 196] = mem[s + _7259 + 32]
                            _7030 = mem[mem[192]]
                            s = s + 32
                            continue 
                        if ceil32(_7472) > _7472:
                            mem[_7472 + _7184 + 196] = 0
                        call address(_7122).mem[_7184 + 196 len 4] with:
                             gas gas_remaining wei
                            args mem[_7184 + 200 len _7472 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_7184 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7184 + 200] = 32
                                mem[_7184 + 232] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _7184 + 264] = mem[idx + _7184 + 164]
                                    _7030 = mem[mem[192]]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_7184 + 264]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _7184 + ceil32(return_data.size) + 197
                            mem[_7184 + 196] = return_data.size
                            mem[_7184 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_7184 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7184 + ceil32(return_data.size) + 201] = 32
                                mem[_7184 + ceil32(return_data.size) + 233] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _7184 + ceil32(return_data.size) + 265] = mem[idx + _7184 + 164]
                                    _7030 = mem[mem[192]]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_7184 + ceil32(return_data.size) + 265]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_7184 + 228] == bool(mem[_7184 + 228])
                                if not mem[_7184 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    _7030 = mem[mem[192]]
                    idx = idx + 1
                    continue 
                _8296 = mem[mem[160]]
                idx = 0
                while idx < _8296:
                    mem[0] = cd[4]
                    mem[32] = 6
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    stor6[cd[4]].field_1536++
                    mem[0] = sha3(cd[4], 6) + 6
                    stor[(3 * stor6[cd[4]].field_1536) + ('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[160] + 32] + 12 len 20]
                    stor[(3 * stor6[cd[4]].field_1536) + ('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                    stor[(3 * stor6[cd[4]].field_1536) + ('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_512 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    if idx == -1:
                        revert with 0, 17
                    _8296 = mem[mem[160]]
                    idx = idx + 1
                    continue 
                _9358 = mem[mem[192]]
                idx = 0
                while idx < _9358:
                    mem[0] = cd[4]
                    mem[32] = 6
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    stor6[cd[4]].field_1792++
                    mem[0] = sha3(cd[4], 6) + 7
                    stor[(2 * stor6[cd[4]].field_1792) + ('array', 7, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[192] + 32] + 12 len 20]
                    stor[(2 * stor6[cd[4]].field_1792) + ('array', 7, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                    if idx == -1:
                        revert with 0, 17
                    _9358 = mem[mem[192]]
                    idx = idx + 1
                    continue 
                if msg.value <= fee:
                    mem[0] = cd[4]
                    mem[32] = 6
                    _9422 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[108 len 20]
                    mem[mem[64] + 64] = mem[128]
                    mem[mem[64] + 96] = 128
                    _9461 = mem[mem[160]]
                    mem[mem[64] + 160] = mem[mem[160]]
                    s = mem[64] + 192
                    idx = 0
                    t = mem[160] + 32
                    while idx < _9461:
                        _10044 = mem[t]
                        mem[s] = mem[mem[t] + 12 len 20]
                        mem[s + 32] = mem[_10044 + 32]
                        mem[s + 64] = mem[_10044 + 64]
                        s = s + 96
                        idx = idx + 1
                        t = t + 32
                        continue 
                    _10043 = mem[192]
                    mem[_9422 + 128] = (96 * _9461) + 160
                    _10098 = mem[_10043]
                    mem[_9422 + (96 * _9461) + 192] = mem[_10043]
                    idx = 0
                    s = _10043 + 32
                    t = _9422 + (96 * _9461) + 224
                    while idx < _10098:
                        _10291 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_10291 + 32]
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                    emit 0x9290cd76: mem[mem[64] len _9422 + (96 * _9461) + (64 * _10098) + -mem[64] + 224], msg.sender, stor6[cd[4]].field_0, cd[4]
                else:
                    if msg.value < fee:
                        revert with 0, 17
                    stor6[cd[4]].field_1280 = msg.value - fee
                    if stor4 > !(msg.value - fee):
                        revert with 0, 17
                    stor4 = stor4 + msg.value - fee
                    mem[0] = cd[4]
                    mem[32] = 6
                    _9655 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[108 len 20]
                    mem[mem[64] + 64] = mem[128]
                    mem[mem[64] + 96] = 128
                    _9715 = mem[mem[160]]
                    mem[mem[64] + 160] = mem[mem[160]]
                    s = mem[64] + 192
                    idx = 0
                    t = mem[160] + 32
                    while idx < _9715:
                        _10049 = mem[t]
                        mem[s] = mem[mem[t] + 12 len 20]
                        mem[s + 32] = mem[_10049 + 32]
                        mem[s + 64] = mem[_10049 + 64]
                        s = s + 96
                        idx = idx + 1
                        t = t + 32
                        continue 
                    _10048 = mem[192]
                    mem[_9655 + 128] = (96 * _9715) + 160
                    _10099 = mem[_10048]
                    mem[_9655 + (96 * _9715) + 192] = mem[_10048]
                    idx = 0
                    s = _10048 + 32
                    t = _9655 + (96 * _9715) + 224
                    while idx < _10099:
                        _10294 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_10294 + 32]
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                    emit 0x9290cd76: mem[mem[64] len _9655 + (96 * _9715) + (64 * _10099) + -mem[64] + 224], msg.sender, stor6[cd[4]].field_0, cd[4]
            else:
                _5656 = mem[mem[160]]
                idx = 0
                while idx < _5656:
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    if 0 == mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                        _5726 = mem[mem[(32 * idx) + mem[160] + 32]]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _5780 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        mem[mem[64]] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _5780
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_5726))
                        call address(_5726).safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _5780, 128, 0
                    else:
                        _5722 = mem[mem[(32 * idx) + mem[160] + 32]]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _5776 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _5814 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _5776
                        mem[mem[64] + 100] = _5814
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        require ext_code.size(address(_5722))
                        call address(_5722).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _5776, _5814, 160, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    _5656 = mem[mem[160]]
                    idx = idx + 1
                    continue 
                _7032 = mem[mem[192]]
                idx = 0
                while idx < _7032:
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    if this.address == msg.sender:
                        _7096 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                        if idx >= mem[mem[192]]:
                            revert with 0, 50
                        _7131 = mem[mem[(32 * idx) + mem[192] + 32]]
                        _7194 = mem[64]
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _7096
                        _7268 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_7268 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_7268 + 36 len 28]
                        mem[64] = _7194 + 164
                        mem[_7194 + 100] = 32
                        mem[_7194 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_7131)):
                            revert with 0, 'Address: call to non-contract'
                        _7478 = mem[_7268]
                        s = 0
                        while s < _7478:
                            mem[s + _7194 + 164] = mem[s + _7268 + 32]
                            _7032 = mem[mem[192]]
                            s = s + 32
                            continue 
                        if ceil32(_7478) > _7478:
                            mem[_7478 + _7194 + 164] = 0
                        call address(_7131).mem[_7194 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_7194 + 168 len _7478 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_7194 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7194 + 168] = 32
                                mem[_7194 + 200] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _7194 + 232] = mem[idx + _7194 + 132]
                                    _7032 = mem[mem[192]]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_7194 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _7194 + ceil32(return_data.size) + 165
                            mem[_7194 + 164] = return_data.size
                            mem[_7194 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_7194 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7194 + ceil32(return_data.size) + 169] = 32
                                mem[_7194 + ceil32(return_data.size) + 201] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _7194 + ceil32(return_data.size) + 233] = mem[idx + _7194 + 132]
                                    _7032 = mem[mem[192]]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_7194 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_7194 + 196] == bool(mem[_7194 + 196])
                                if not mem[_7194 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        _7092 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                        if idx >= mem[mem[192]]:
                            revert with 0, 50
                        _7129 = mem[mem[(32 * idx) + mem[192] + 32]]
                        _7193 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = _7092
                        _7266 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_7266 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_7266 + 36 len 28]
                        mem[64] = _7193 + 196
                        mem[_7193 + 132] = 32
                        mem[_7193 + 164] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_7129)):
                            revert with 0, 'Address: call to non-contract'
                        _7476 = mem[_7266]
                        s = 0
                        while s < _7476:
                            mem[s + _7193 + 196] = mem[s + _7266 + 32]
                            _7032 = mem[mem[192]]
                            s = s + 32
                            continue 
                        if ceil32(_7476) > _7476:
                            mem[_7476 + _7193 + 196] = 0
                        call address(_7129).mem[_7193 + 196 len 4] with:
                             gas gas_remaining wei
                            args mem[_7193 + 200 len _7476 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_7193 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7193 + 200] = 32
                                mem[_7193 + 232] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _7193 + 264] = mem[idx + _7193 + 164]
                                    _7032 = mem[mem[192]]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_7193 + 264]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _7193 + ceil32(return_data.size) + 197
                            mem[_7193 + 196] = return_data.size
                            mem[_7193 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_7193 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7193 + ceil32(return_data.size) + 201] = 32
                                mem[_7193 + ceil32(return_data.size) + 233] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _7193 + ceil32(return_data.size) + 265] = mem[idx + _7193 + 164]
                                    _7032 = mem[mem[192]]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_7193 + ceil32(return_data.size) + 265]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_7193 + 228] == bool(mem[_7193 + 228])
                                if not mem[_7193 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    _7032 = mem[mem[192]]
                    idx = idx + 1
                    continue 
                _8298 = mem[mem[160]]
                idx = 0
                while idx < _8298:
                    mem[0] = cd[4]
                    mem[32] = 6
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    stor6[cd[4]].field_1536++
                    mem[0] = sha3(cd[4], 6) + 6
                    stor[(3 * stor6[cd[4]].field_1536) + ('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[160] + 32] + 12 len 20]
                    stor[(3 * stor6[cd[4]].field_1536) + ('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                    stor[(3 * stor6[cd[4]].field_1536) + ('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_512 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    if idx == -1:
                        revert with 0, 17
                    _8298 = mem[mem[160]]
                    idx = idx + 1
                    continue 
                _9360 = mem[mem[192]]
                idx = 0
                while idx < _9360:
                    mem[0] = cd[4]
                    mem[32] = 6
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    stor6[cd[4]].field_1792++
                    mem[0] = sha3(cd[4], 6) + 7
                    stor[(2 * stor6[cd[4]].field_1792) + ('array', 7, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[192] + 32] + 12 len 20]
                    stor[(2 * stor6[cd[4]].field_1792) + ('array', 7, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                    if idx == -1:
                        revert with 0, 17
                    _9360 = mem[mem[192]]
                    idx = idx + 1
                    continue 
                if msg.value <= fee:
                    mem[0] = cd[4]
                    mem[32] = 6
                    _9428 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[108 len 20]
                    mem[mem[64] + 64] = mem[128]
                    mem[mem[64] + 96] = 128
                    _9465 = mem[mem[160]]
                    mem[mem[64] + 160] = mem[mem[160]]
                    s = mem[64] + 192
                    idx = 0
                    t = mem[160] + 32
                    while idx < _9465:
                        _10054 = mem[t]
                        mem[s] = mem[mem[t] + 12 len 20]
                        mem[s + 32] = mem[_10054 + 32]
                        mem[s + 64] = mem[_10054 + 64]
                        s = s + 96
                        idx = idx + 1
                        t = t + 32
                        continue 
                    _10053 = mem[192]
                    mem[_9428 + 128] = (96 * _9465) + 160
                    _10100 = mem[_10053]
                    mem[_9428 + (96 * _9465) + 192] = mem[_10053]
                    idx = 0
                    s = _10053 + 32
                    t = _9428 + (96 * _9465) + 224
                    while idx < _10100:
                        _10297 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_10297 + 32]
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                    emit 0x9290cd76: mem[mem[64] len _9428 + (96 * _9465) + (64 * _10100) + -mem[64] + 224], msg.sender, stor6[cd[4]].field_0, cd[4]
                else:
                    if msg.value < fee:
                        revert with 0, 17
                    stor6[cd[4]].field_1280 = msg.value - fee
                    if stor4 > !(msg.value - fee):
                        revert with 0, 17
                    stor4 = stor4 + msg.value - fee
                    mem[0] = cd[4]
                    mem[32] = 6
                    _9657 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[108 len 20]
                    mem[mem[64] + 64] = mem[128]
                    mem[mem[64] + 96] = 128
                    _9720 = mem[mem[160]]
                    mem[mem[64] + 160] = mem[mem[160]]
                    s = mem[64] + 192
                    idx = 0
                    t = mem[160] + 32
                    while idx < _9720:
                        _10059 = mem[t]
                        mem[s] = mem[mem[t] + 12 len 20]
                        mem[s + 32] = mem[_10059 + 32]
                        mem[s + 64] = mem[_10059 + 64]
                        s = s + 96
                        idx = idx + 1
                        t = t + 32
                        continue 
                    _10058 = mem[192]
                    mem[_9657 + 128] = (96 * _9720) + 160
                    _10101 = mem[_10058]
                    mem[_9657 + (96 * _9720) + 192] = mem[_10058]
                    idx = 0
                    s = _10058 + 32
                    t = _9657 + (96 * _9720) + 224
                    while idx < _10101:
                        _10300 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_10300 + 32]
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                    emit 0x9290cd76: mem[mem[64] len _9657 + (96 * _9720) + (64 * _10101) + -mem[64] + 224], msg.sender, stor6[cd[4]].field_0, cd[4]
    else:
        mem[0] = sha3(cd[4], 6) + 6
        _2852 = mem[64]
        mem[64] = mem[64] + 96
        mem[_2852] = stor6[cd[4]][6].field_0
        mem[_2852 + 32] = stor6[cd[4]][6].field_256
        mem[_2852 + 64] = stor6[cd[4]][6].field_512
        mem[_2848 + 32] = _2852
        s = _2848 + 64
        idx = 1
        while idx < stor6[cd[4]].field_1536:
            mem[0] = sha3(cd[4], 6) + 6
            _4256 = mem[64]
            mem[64] = mem[64] + 96
            mem[_4256] = stor[('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6))) + (3 * idx)].field_0
            mem[_4256 + 32] = stor[('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6))) + (3 * idx)].field_256
            mem[_4256 + 64] = stor[('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6))) + (3 * idx)].field_512
            mem[s] = _4256
            s = s + 32
            idx = idx + 1
            continue 
        mem[_2847 + 64] = _2848
        _4254 = mem[64]
        mem[64] = mem[64] + (32 * stor6[cd[4]].field_1792) + 32
        mem[_4254] = stor6[cd[4]].field_1792
        s = _4254 + 32
        idx = 0
        while idx < stor6[cd[4]].field_1792:
            mem[0] = sha3(cd[4], 6) + 7
            _5664 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5664] = stor[('array', 7, ('map', ('cd', 4), ('name', 'stor6', 6))) + (2 * idx)].field_0
            mem[_5664 + 32] = stor[('array', 7, ('map', ('cd', 4), ('name', 'stor6', 6))) + (2 * idx)].field_256
            mem[s] = _5664
            s = s + 32
            idx = idx + 1
            continue 
        mem[_2847 + 96] = _4254
        if mem[mem[_2847 + 64]]:
            revert with 0, 'Tradescrow: swap already initiated'
        if mem[_4254]:
            revert with 0, 'Tradescrow: swap already initiated'
        if mem[_2847 + 32]:
            revert with 0, 'Tradescrow: swap already initiated'
        mem[0] = cd[4]
        mem[32] = 6
        if stor6[cd[4]].field_2048 != 1:
            revert with 0, 'Tradescrow: Swap closed. Only user cancel enabled'
        if mem[mem[160]]:
            _7034 = mem[mem[160]]
            idx = 0
            while idx < _7034:
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                if 0 == mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                    _7141 = mem[mem[(32 * idx) + mem[160] + 32]]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _7210 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    mem[mem[64]] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _7210
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(address(_7141))
                    call address(_7141).safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _7210, 128, 0
                else:
                    _7137 = mem[mem[(32 * idx) + mem[160] + 32]]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _7206 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _7278 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _7206
                    mem[mem[64] + 100] = _7278
                    mem[mem[64] + 132] = 160
                    mem[mem[64] + 164] = 0
                    require ext_code.size(address(_7137))
                    call address(_7137).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _7206, _7278, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                _7034 = mem[mem[160]]
                idx = idx + 1
                continue 
            _8300 = mem[mem[192]]
            idx = 0
            while idx < _8300:
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                if this.address == msg.sender:
                    _8369 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    _8428 = mem[mem[(32 * idx) + mem[192] + 32]]
                    _8475 = mem[64]
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _8369
                    _8499 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_8499 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_8499 + 36 len 28]
                    mem[64] = _8475 + 164
                    mem[_8475 + 100] = 32
                    mem[_8475 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_8428)):
                        revert with 0, 'Address: call to non-contract'
                    _8745 = mem[_8499]
                    s = 0
                    while s < _8745:
                        mem[s + _8475 + 164] = mem[s + _8499 + 32]
                        _8300 = mem[mem[192]]
                        s = s + 32
                        continue 
                    if ceil32(_8745) > _8745:
                        mem[_8745 + _8475 + 164] = 0
                    call address(_8428).mem[_8475 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_8475 + 168 len _8745 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_8475 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_8475 + 168] = 32
                            mem[_8475 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _8475 + 232] = mem[idx + _8475 + 132]
                                _8300 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_8475 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _8475 + ceil32(return_data.size) + 165
                        mem[_8475 + 164] = return_data.size
                        mem[_8475 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8475 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_8475 + ceil32(return_data.size) + 169] = 32
                            mem[_8475 + ceil32(return_data.size) + 201] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _8475 + ceil32(return_data.size) + 233] = mem[idx + _8475 + 132]
                                _8300 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_8475 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_8475 + 196] == bool(mem[_8475 + 196])
                            if not mem[_8475 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    _8365 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    _8426 = mem[mem[(32 * idx) + mem[192] + 32]]
                    _8474 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = _8365
                    _8497 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_8497 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_8497 + 36 len 28]
                    mem[64] = _8474 + 196
                    mem[_8474 + 132] = 32
                    mem[_8474 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_8426)):
                        revert with 0, 'Address: call to non-contract'
                    _8743 = mem[_8497]
                    s = 0
                    while s < _8743:
                        mem[s + _8474 + 196] = mem[s + _8497 + 32]
                        _8300 = mem[mem[192]]
                        s = s + 32
                        continue 
                    if ceil32(_8743) > _8743:
                        mem[_8743 + _8474 + 196] = 0
                    call address(_8426).mem[_8474 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_8474 + 200 len _8743 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_8474 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_8474 + 200] = 32
                            mem[_8474 + 232] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _8474 + 264] = mem[idx + _8474 + 164]
                                _8300 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_8474 + 264]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _8474 + ceil32(return_data.size) + 197
                        mem[_8474 + 196] = return_data.size
                        mem[_8474 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8474 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_8474 + ceil32(return_data.size) + 201] = 32
                            mem[_8474 + ceil32(return_data.size) + 233] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _8474 + ceil32(return_data.size) + 265] = mem[idx + _8474 + 164]
                                _8300 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_8474 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_8474 + 228] == bool(mem[_8474 + 228])
                            if not mem[_8474 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if idx == -1:
                    revert with 0, 17
                _8300 = mem[mem[192]]
                idx = idx + 1
                continue 
            _9362 = mem[mem[160]]
            idx = 0
            while idx < _9362:
                mem[0] = cd[4]
                mem[32] = 6
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                stor6[cd[4]].field_1536++
                mem[0] = sha3(cd[4], 6) + 6
                stor[(3 * stor6[cd[4]].field_1536) + ('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[160] + 32] + 12 len 20]
                stor[(3 * stor6[cd[4]].field_1536) + ('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                stor[(3 * stor6[cd[4]].field_1536) + ('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_512 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                if idx == -1:
                    revert with 0, 17
                _9362 = mem[mem[160]]
                idx = idx + 1
                continue 
            _10028 = mem[mem[192]]
            idx = 0
            while idx < _10028:
                mem[0] = cd[4]
                mem[32] = 6
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                stor6[cd[4]].field_1792++
                mem[0] = sha3(cd[4], 6) + 7
                stor[(2 * stor6[cd[4]].field_1792) + ('array', 7, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[192] + 32] + 12 len 20]
                stor[(2 * stor6[cd[4]].field_1792) + ('array', 7, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                if idx == -1:
                    revert with 0, 17
                _10028 = mem[mem[192]]
                idx = idx + 1
                continue 
            if msg.value <= fee:
                mem[0] = cd[4]
                mem[32] = 6
                _10103 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[108 len 20]
                mem[mem[64] + 64] = mem[128]
                mem[mem[64] + 96] = 128
                _10123 = mem[mem[160]]
                mem[mem[64] + 160] = mem[mem[160]]
                s = mem[64] + 192
                idx = 0
                t = mem[160] + 32
                while idx < _10123:
                    _10304 = mem[t]
                    mem[s] = mem[mem[t] + 12 len 20]
                    mem[s + 32] = mem[_10304 + 32]
                    mem[s + 64] = mem[_10304 + 64]
                    s = s + 96
                    idx = idx + 1
                    t = t + 32
                    continue 
                _10303 = mem[192]
                mem[_10103 + 128] = (96 * _10123) + 160
                _10333 = mem[_10303]
                mem[_10103 + (96 * _10123) + 192] = mem[_10303]
                idx = 0
                s = _10303 + 32
                t = _10103 + (96 * _10123) + 224
                while idx < _10333:
                    _10369 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_10369 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                emit 0x9290cd76: mem[mem[64] len _10103 + (96 * _10123) + (64 * _10333) + -mem[64] + 224], msg.sender, stor6[cd[4]].field_0, cd[4]
            else:
                if msg.value < fee:
                    revert with 0, 17
                stor6[cd[4]].field_1280 = msg.value - fee
                if stor4 > !(msg.value - fee):
                    revert with 0, 17
                stor4 = stor4 + msg.value - fee
                mem[0] = cd[4]
                mem[32] = 6
                _10235 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[108 len 20]
                mem[mem[64] + 64] = mem[128]
                mem[mem[64] + 96] = 128
                _10244 = mem[mem[160]]
                mem[mem[64] + 160] = mem[mem[160]]
                s = mem[64] + 192
                idx = 0
                t = mem[160] + 32
                while idx < _10244:
                    _10309 = mem[t]
                    mem[s] = mem[mem[t] + 12 len 20]
                    mem[s + 32] = mem[_10309 + 32]
                    mem[s + 64] = mem[_10309 + 64]
                    s = s + 96
                    idx = idx + 1
                    t = t + 32
                    continue 
                _10308 = mem[192]
                mem[_10235 + 128] = (96 * _10244) + 160
                _10334 = mem[_10308]
                mem[_10235 + (96 * _10244) + 192] = mem[_10308]
                idx = 0
                s = _10308 + 32
                t = _10235 + (96 * _10244) + 224
                while idx < _10334:
                    _10372 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_10372 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                emit 0x9290cd76: mem[mem[64] len _10235 + (96 * _10244) + (64 * _10334) + -mem[64] + 224], msg.sender, stor6[cd[4]].field_0, cd[4]
        else:
            if mem[mem[192]]:
                _7036 = mem[mem[160]]
                idx = 0
                while idx < _7036:
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    if 0 == mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                        _7153 = mem[mem[(32 * idx) + mem[160] + 32]]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _7228 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        mem[mem[64]] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _7228
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_7153))
                        call address(_7153).safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _7228, 128, 0
                    else:
                        _7149 = mem[mem[(32 * idx) + mem[160] + 32]]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _7224 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _7289 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _7224
                        mem[mem[64] + 100] = _7289
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        require ext_code.size(address(_7149))
                        call address(_7149).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _7224, _7289, 160, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    _7036 = mem[mem[160]]
                    idx = idx + 1
                    continue 
                _8302 = mem[mem[192]]
                idx = 0
                while idx < _8302:
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    if this.address == msg.sender:
                        _8379 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                        if idx >= mem[mem[192]]:
                            revert with 0, 50
                        _8435 = mem[mem[(32 * idx) + mem[192] + 32]]
                        _8484 = mem[64]
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _8379
                        _8506 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_8506 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_8506 + 36 len 28]
                        mem[64] = _8484 + 164
                        mem[_8484 + 100] = 32
                        mem[_8484 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_8435)):
                            revert with 0, 'Address: call to non-contract'
                        _8749 = mem[_8506]
                        s = 0
                        while s < _8749:
                            mem[s + _8484 + 164] = mem[s + _8506 + 32]
                            _8302 = mem[mem[192]]
                            s = s + 32
                            continue 
                        if ceil32(_8749) > _8749:
                            mem[_8749 + _8484 + 164] = 0
                        call address(_8435).mem[_8484 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_8484 + 168 len _8749 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_8484 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_8484 + 168] = 32
                                mem[_8484 + 200] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _8484 + 232] = mem[idx + _8484 + 132]
                                    _8302 = mem[mem[192]]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_8484 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _8484 + ceil32(return_data.size) + 165
                            mem[_8484 + 164] = return_data.size
                            mem[_8484 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_8484 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_8484 + ceil32(return_data.size) + 169] = 32
                                mem[_8484 + ceil32(return_data.size) + 201] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _8484 + ceil32(return_data.size) + 233] = mem[idx + _8484 + 132]
                                    _8302 = mem[mem[192]]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_8484 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_8484 + 196] == bool(mem[_8484 + 196])
                                if not mem[_8484 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        _8375 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                        if idx >= mem[mem[192]]:
                            revert with 0, 50
                        _8433 = mem[mem[(32 * idx) + mem[192] + 32]]
                        _8483 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = _8375
                        _8504 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_8504 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_8504 + 36 len 28]
                        mem[64] = _8483 + 196
                        mem[_8483 + 132] = 32
                        mem[_8483 + 164] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_8433)):
                            revert with 0, 'Address: call to non-contract'
                        _8747 = mem[_8504]
                        s = 0
                        while s < _8747:
                            mem[s + _8483 + 196] = mem[s + _8504 + 32]
                            _8302 = mem[mem[192]]
                            s = s + 32
                            continue 
                        if ceil32(_8747) > _8747:
                            mem[_8747 + _8483 + 196] = 0
                        call address(_8433).mem[_8483 + 196 len 4] with:
                             gas gas_remaining wei
                            args mem[_8483 + 200 len _8747 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_8483 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_8483 + 200] = 32
                                mem[_8483 + 232] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _8483 + 264] = mem[idx + _8483 + 164]
                                    _8302 = mem[mem[192]]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_8483 + 264]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _8483 + ceil32(return_data.size) + 197
                            mem[_8483 + 196] = return_data.size
                            mem[_8483 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_8483 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_8483 + ceil32(return_data.size) + 201] = 32
                                mem[_8483 + ceil32(return_data.size) + 233] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _8483 + ceil32(return_data.size) + 265] = mem[idx + _8483 + 164]
                                    _8302 = mem[mem[192]]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_8483 + ceil32(return_data.size) + 265]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_8483 + 228] == bool(mem[_8483 + 228])
                                if not mem[_8483 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    _8302 = mem[mem[192]]
                    idx = idx + 1
                    continue 
                _9364 = mem[mem[160]]
                idx = 0
                while idx < _9364:
                    mem[0] = cd[4]
                    mem[32] = 6
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    stor6[cd[4]].field_1536++
                    mem[0] = sha3(cd[4], 6) + 6
                    stor[(3 * stor6[cd[4]].field_1536) + ('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[160] + 32] + 12 len 20]
                    stor[(3 * stor6[cd[4]].field_1536) + ('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                    stor[(3 * stor6[cd[4]].field_1536) + ('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_512 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    if idx == -1:
                        revert with 0, 17
                    _9364 = mem[mem[160]]
                    idx = idx + 1
                    continue 
                _10030 = mem[mem[192]]
                idx = 0
                while idx < _10030:
                    mem[0] = cd[4]
                    mem[32] = 6
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    stor6[cd[4]].field_1792++
                    mem[0] = sha3(cd[4], 6) + 7
                    stor[(2 * stor6[cd[4]].field_1792) + ('array', 7, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[192] + 32] + 12 len 20]
                    stor[(2 * stor6[cd[4]].field_1792) + ('array', 7, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                    if idx == -1:
                        revert with 0, 17
                    _10030 = mem[mem[192]]
                    idx = idx + 1
                    continue 
                if msg.value <= fee:
                    mem[0] = cd[4]
                    mem[32] = 6
                    _10109 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[108 len 20]
                    mem[mem[64] + 64] = mem[128]
                    mem[mem[64] + 96] = 128
                    _10127 = mem[mem[160]]
                    mem[mem[64] + 160] = mem[mem[160]]
                    s = mem[64] + 192
                    idx = 0
                    t = mem[160] + 32
                    while idx < _10127:
                        _10314 = mem[t]
                        mem[s] = mem[mem[t] + 12 len 20]
                        mem[s + 32] = mem[_10314 + 32]
                        mem[s + 64] = mem[_10314 + 64]
                        s = s + 96
                        idx = idx + 1
                        t = t + 32
                        continue 
                    _10313 = mem[192]
                    mem[_10109 + 128] = (96 * _10127) + 160
                    _10335 = mem[_10313]
                    mem[_10109 + (96 * _10127) + 192] = mem[_10313]
                    idx = 0
                    s = _10313 + 32
                    t = _10109 + (96 * _10127) + 224
                    while idx < _10335:
                        _10375 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_10375 + 32]
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                    emit 0x9290cd76: mem[mem[64] len _10109 + (96 * _10127) + (64 * _10335) + -mem[64] + 224], msg.sender, stor6[cd[4]].field_0, cd[4]
                else:
                    if msg.value < fee:
                        revert with 0, 17
                    stor6[cd[4]].field_1280 = msg.value - fee
                    if stor4 > !(msg.value - fee):
                        revert with 0, 17
                    stor4 = stor4 + msg.value - fee
                    mem[0] = cd[4]
                    mem[32] = 6
                    _10237 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[108 len 20]
                    mem[mem[64] + 64] = mem[128]
                    mem[mem[64] + 96] = 128
                    _10249 = mem[mem[160]]
                    mem[mem[64] + 160] = mem[mem[160]]
                    s = mem[64] + 192
                    idx = 0
                    t = mem[160] + 32
                    while idx < _10249:
                        _10319 = mem[t]
                        mem[s] = mem[mem[t] + 12 len 20]
                        mem[s + 32] = mem[_10319 + 32]
                        mem[s + 64] = mem[_10319 + 64]
                        s = s + 96
                        idx = idx + 1
                        t = t + 32
                        continue 
                    _10318 = mem[192]
                    mem[_10237 + 128] = (96 * _10249) + 160
                    _10336 = mem[_10318]
                    mem[_10237 + (96 * _10249) + 192] = mem[_10318]
                    idx = 0
                    s = _10318 + 32
                    t = _10237 + (96 * _10249) + 224
                    while idx < _10336:
                        _10378 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_10378 + 32]
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                    emit 0x9290cd76: mem[mem[64] len _10237 + (96 * _10249) + (64 * _10336) + -mem[64] + 224], msg.sender, stor6[cd[4]].field_0, cd[4]
            else:
                _7038 = mem[mem[160]]
                idx = 0
                while idx < _7038:
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    if 0 == mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                        _7165 = mem[mem[(32 * idx) + mem[160] + 32]]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _7246 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        mem[mem[64]] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _7246
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_7165))
                        call address(_7165).safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _7246, 128, 0
                    else:
                        _7161 = mem[mem[(32 * idx) + mem[160] + 32]]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _7242 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _7300 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _7242
                        mem[mem[64] + 100] = _7300
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        require ext_code.size(address(_7161))
                        call address(_7161).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _7242, _7300, 160, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    _7038 = mem[mem[160]]
                    idx = idx + 1
                    continue 
                _8304 = mem[mem[192]]
                idx = 0
                while idx < _8304:
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    if this.address == msg.sender:
                        _8389 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                        if idx >= mem[mem[192]]:
                            revert with 0, 50
                        _8442 = mem[mem[(32 * idx) + mem[192] + 32]]
                        _8493 = mem[64]
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _8389
                        _8513 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_8513 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_8513 + 36 len 28]
                        mem[64] = _8493 + 164
                        mem[_8493 + 100] = 32
                        mem[_8493 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_8442)):
                            revert with 0, 'Address: call to non-contract'
                        _8753 = mem[_8513]
                        s = 0
                        while s < _8753:
                            mem[s + _8493 + 164] = mem[s + _8513 + 32]
                            _8304 = mem[mem[192]]
                            s = s + 32
                            continue 
                        if ceil32(_8753) > _8753:
                            mem[_8753 + _8493 + 164] = 0
                        call address(_8442).mem[_8493 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_8493 + 168 len _8753 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_8493 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_8493 + 168] = 32
                                mem[_8493 + 200] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _8493 + 232] = mem[idx + _8493 + 132]
                                    _8304 = mem[mem[192]]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_8493 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _8493 + ceil32(return_data.size) + 165
                            mem[_8493 + 164] = return_data.size
                            mem[_8493 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_8493 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_8493 + ceil32(return_data.size) + 169] = 32
                                mem[_8493 + ceil32(return_data.size) + 201] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _8493 + ceil32(return_data.size) + 233] = mem[idx + _8493 + 132]
                                    _8304 = mem[mem[192]]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_8493 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_8493 + 196] == bool(mem[_8493 + 196])
                                if not mem[_8493 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        _8385 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                        if idx >= mem[mem[192]]:
                            revert with 0, 50
                        _8440 = mem[mem[(32 * idx) + mem[192] + 32]]
                        _8492 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = _8385
                        _8511 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_8511 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_8511 + 36 len 28]
                        mem[64] = _8492 + 196
                        mem[_8492 + 132] = 32
                        mem[_8492 + 164] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_8440)):
                            revert with 0, 'Address: call to non-contract'
                        _8751 = mem[_8511]
                        s = 0
                        while s < _8751:
                            mem[s + _8492 + 196] = mem[s + _8511 + 32]
                            _8304 = mem[mem[192]]
                            s = s + 32
                            continue 
                        if ceil32(_8751) > _8751:
                            mem[_8751 + _8492 + 196] = 0
                        call address(_8440).mem[_8492 + 196 len 4] with:
                             gas gas_remaining wei
                            args mem[_8492 + 200 len _8751 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_8492 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_8492 + 200] = 32
                                mem[_8492 + 232] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _8492 + 264] = mem[idx + _8492 + 164]
                                    _8304 = mem[mem[192]]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_8492 + 264]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _8492 + ceil32(return_data.size) + 197
                            mem[_8492 + 196] = return_data.size
                            mem[_8492 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_8492 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_8492 + ceil32(return_data.size) + 201] = 32
                                mem[_8492 + ceil32(return_data.size) + 233] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _8492 + ceil32(return_data.size) + 265] = mem[idx + _8492 + 164]
                                    _8304 = mem[mem[192]]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_8492 + ceil32(return_data.size) + 265]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_8492 + 228] == bool(mem[_8492 + 228])
                                if not mem[_8492 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    _8304 = mem[mem[192]]
                    idx = idx + 1
                    continue 
                _9366 = mem[mem[160]]
                idx = 0
                while idx < _9366:
                    mem[0] = cd[4]
                    mem[32] = 6
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    stor6[cd[4]].field_1536++
                    mem[0] = sha3(cd[4], 6) + 6
                    stor[(3 * stor6[cd[4]].field_1536) + ('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[160] + 32] + 12 len 20]
                    stor[(3 * stor6[cd[4]].field_1536) + ('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                    stor[(3 * stor6[cd[4]].field_1536) + ('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_512 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    if idx == -1:
                        revert with 0, 17
                    _9366 = mem[mem[160]]
                    idx = idx + 1
                    continue 
                _10032 = mem[mem[192]]
                idx = 0
                while idx < _10032:
                    mem[0] = cd[4]
                    mem[32] = 6
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    stor6[cd[4]].field_1792++
                    mem[0] = sha3(cd[4], 6) + 7
                    stor[(2 * stor6[cd[4]].field_1792) + ('array', 7, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[192] + 32] + 12 len 20]
                    stor[(2 * stor6[cd[4]].field_1792) + ('array', 7, ('map', ('cd', 4), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                    if idx == -1:
                        revert with 0, 17
                    _10032 = mem[mem[192]]
                    idx = idx + 1
                    continue 
                if msg.value <= fee:
                    mem[0] = cd[4]
                    mem[32] = 6
                    _10115 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[108 len 20]
                    mem[mem[64] + 64] = mem[128]
                    mem[mem[64] + 96] = 128
                    _10131 = mem[mem[160]]
                    mem[mem[64] + 160] = mem[mem[160]]
                    s = mem[64] + 192
                    idx = 0
                    t = mem[160] + 32
                    while idx < _10131:
                        _10324 = mem[t]
                        mem[s] = mem[mem[t] + 12 len 20]
                        mem[s + 32] = mem[_10324 + 32]
                        mem[s + 64] = mem[_10324 + 64]
                        s = s + 96
                        idx = idx + 1
                        t = t + 32
                        continue 
                    _10323 = mem[192]
                    mem[_10115 + 128] = (96 * _10131) + 160
                    _10337 = mem[_10323]
                    mem[_10115 + (96 * _10131) + 192] = mem[_10323]
                    idx = 0
                    s = _10323 + 32
                    t = _10115 + (96 * _10131) + 224
                    while idx < _10337:
                        _10381 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_10381 + 32]
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                    emit 0x9290cd76: mem[mem[64] len _10115 + (96 * _10131) + (64 * _10337) + -mem[64] + 224], msg.sender, stor6[cd[4]].field_0, cd[4]
                else:
                    if msg.value < fee:
                        revert with 0, 17
                    stor6[cd[4]].field_1280 = msg.value - fee
                    if stor4 > !(msg.value - fee):
                        revert with 0, 17
                    stor4 = stor4 + msg.value - fee
                    mem[0] = cd[4]
                    mem[32] = 6
                    _10239 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[108 len 20]
                    mem[mem[64] + 64] = mem[128]
                    mem[mem[64] + 96] = 128
                    _10254 = mem[mem[160]]
                    mem[mem[64] + 160] = mem[mem[160]]
                    s = mem[64] + 192
                    idx = 0
                    t = mem[160] + 32
                    while idx < _10254:
                        _10329 = mem[t]
                        mem[s] = mem[mem[t] + 12 len 20]
                        mem[s + 32] = mem[_10329 + 32]
                        mem[s + 64] = mem[_10329 + 64]
                        s = s + 96
                        idx = idx + 1
                        t = t + 32
                        continue 
                    _10328 = mem[192]
                    mem[_10239 + 128] = (96 * _10254) + 160
                    _10338 = mem[_10328]
                    mem[_10239 + (96 * _10254) + 192] = mem[_10328]
                    idx = 0
                    s = _10328 + 32
                    t = _10239 + (96 * _10254) + 224
                    while idx < _10338:
                        _10384 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_10384 + 32]
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                    emit 0x9290cd76: mem[mem[64] len _10239 + (96 * _10254) + (64 * _10338) + -mem[64] + 224], msg.sender, stor6[cd[4]].field_0, cd[4]
    stor1 = 1
}



}

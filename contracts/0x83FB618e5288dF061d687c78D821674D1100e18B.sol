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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    fee = arg1
    emit 0xe8541851: arg1
}

function pause() {
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

function unpause() {
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
    if eth.balance(this.address) - stor4 <= 0:
        revert with 0, 'Tradescrow: No available fees'
    if eth.balance(this.address) < stor4:
        revert with 0, 17
    call arg1 with:
       value eth.balance(this.address) - stor4 wei
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

function sub_17dcfcfc(?) {
    require calldata.size - 4 >= 64
    if arg2:
        if arg2 != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tradescrow: Invalid participant identifier'
        if arg2:
            idx = 0
            while idx < stor6[arg1].field_1792:
                if idx >= stor6[arg1].field_1792:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= stor6[arg1].field_1792:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[(2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_256
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 6
                idx = idx + 1
                continue 
            idx = 0
            while idx < stor6[arg1].field_1536:
                if idx >= stor6[arg1].field_1536:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= stor6[arg1].field_1536:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= stor6[arg1].field_1536:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[(3 * idx) + ('array', 6, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_512
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 6
                idx = idx + 1
                continue 
            mem[128] = stor6[arg1].field_1280
            mem[160] = 224
            mem[320] = stor6[arg1].field_1024
            idx = 0
            s = 128
            t = 352
            while idx < stor6[arg1].field_1024:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[192] = (32 * stor6[arg1].field_1024) + 256
            mem[(32 * stor6[arg1].field_1024) + 352] = stor6[arg1].field_1024
            mem[(32 * stor6[arg1].field_1024) + 384 len 32 * stor6[arg1].field_1024] = mem[128 len 32 * stor6[arg1].field_1024]
            mem[224] = (64 * stor6[arg1].field_1024) + 288
            mem[(64 * stor6[arg1].field_1024) + 384] = stor6[arg1].field_1024
            idx = 0
            s = 128
            t = (64 * stor6[arg1].field_1024) + 416
            while idx < stor6[arg1].field_1024:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[256] = (98 * stor6[arg1].field_1024) + 320
            mem[(98 * stor6[arg1].field_1024) + 448 len 32 * stor6[arg1].field_1024] = mem[128 len 32 * stor6[arg1].field_1024]
            mem[288] = (128 * stor6[arg1].field_1024) + 352
            mem[(128 * stor6[arg1].field_1024) + 448] = stor6[arg1].field_1024
            mem[(131 * stor6[arg1].field_1024) + 480 len 32 * stor6[arg1].field_1024] = mem[128 len 32 * stor6[arg1].field_1024]
            return stor6[arg1].field_1024, 
                   stor6[arg1].field_1280,
                   Array(len=stor6[arg1].field_1024, data=mem[352 len (98 * stor6[arg1].field_1024) + 64], stor6[arg1].field_1024, mem[(98 * stor6[arg1].field_1024) + 448 len (66 * stor6[arg1].field_1024) + 32]),
                   (32 * stor6[arg1].field_1024) + 256,
                   (64 * stor6[arg1].field_1024) + 288,
                   (98 * stor6[arg1].field_1024) + 320,
                   (128 * stor6[arg1].field_1024) + 352
    idx = 0
    while idx < stor6[arg1].field_768:
        if idx >= stor6[arg1].field_768:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= stor6[arg1].field_768:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor[(2 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_256
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 6
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor6[arg1].field_512:
        if idx >= stor6[arg1].field_512:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= stor6[arg1].field_512:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= stor6[arg1].field_512:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor[(3 * idx) + ('array', 2, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_512
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 6
        idx = idx + 1
        continue 
    mem[128] = stor6[arg1].field_256
    mem[160] = 224
    mem[320] = stor6[arg1].field_0
    idx = 0
    s = 128
    t = 352
    while idx < stor6[arg1].field_0:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[192] = (32 * stor6[arg1].field_0) + 256
    mem[(32 * stor6[arg1].field_0) + 352] = stor6[arg1].field_0
    mem[(32 * stor6[arg1].field_0) + 384 len 32 * stor6[arg1].field_0] = mem[128 len 32 * stor6[arg1].field_0]
    mem[224] = (64 * stor6[arg1].field_0) + 288
    mem[(64 * stor6[arg1].field_0) + 384] = stor6[arg1].field_0
    idx = 0
    s = 128
    t = (64 * stor6[arg1].field_0) + 416
    while idx < stor6[arg1].field_0:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[256] = (98 * stor6[arg1].field_0) + 320
    mem[(98 * stor6[arg1].field_0) + 448 len 32 * stor6[arg1].field_0] = mem[128 len 32 * stor6[arg1].field_0]
    mem[288] = (128 * stor6[arg1].field_0) + 352
    mem[(128 * stor6[arg1].field_0) + 448] = stor6[arg1].field_0
    mem[(131 * stor6[arg1].field_0) + 480 len 32 * stor6[arg1].field_0] = mem[128 len 32 * stor6[arg1].field_0]
    return stor6[arg1].field_0, 
           stor6[arg1].field_256,
           Array(len=stor6[arg1].field_0, data=mem[352 len (98 * stor6[arg1].field_0) + 64], stor6[arg1].field_0, mem[(98 * stor6[arg1].field_0) + 448 len (66 * stor6[arg1].field_0) + 32]),
           (32 * stor6[arg1].field_0) + 256,
           (64 * stor6[arg1].field_0) + 288,
           (98 * stor6[arg1].field_0) + 320,
           (128 * stor6[arg1].field_0) + 352
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
        _742 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[idx] == address(cd[idx])
        mem[_742] = cd[idx]
        mem[_742 + 32] = cd[(idx + 32)]
        mem[_742 + 64] = cd[(idx + 64)]
        mem[s] = _742
        s = s + 32
        idx = idx + 96
        continue 
    mem[160] = 224
    require ('cd', 36)[2] <= test266151307()
    require cd[36] + ('cd', 36)[2] + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36)[2] + 4)] > test266151307():
        revert with 0, 65
    _743 = mem[64]
    if mem[64] + ceil32(32 * cd[(cd[36] + ('cd', 36)[2] + 4)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[36] + ('cd', 36)[2] + 4)]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * cd[(cd[36] + ('cd', 36)[2] + 4)]) + 1
    mem[_743] = cd[(cd[36] + ('cd', 36)[2] + 4)]
    require cd[36] + ('cd', 36)[2] + (64 * cd[(cd[36] + ('cd', 36)[2] + 4)]) + 36 <= calldata.size
    idx = cd[36] + ('cd', 36)[2] + 36
    s = _743 + 32
    while idx < cd[36] + ('cd', 36)[2] + (64 * cd[(cd[36] + ('cd', 36)[2] + 4)]) + 36:
        require calldata.size - idx >= 64
        _1481 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[idx] == address(cd[idx])
        mem[_1481] = cd[idx]
        mem[_1481 + 32] = cd[(idx + 32)]
        mem[s] = _1481
        idx = idx + 64
        s = s + 32
        continue 
    mem[192] = _743
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if msg.value < fee:
        revert with 0, 'Tradescrow: Sent amount needs to be greater than or equal to the application fee'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor3++
    if mem[mem[160]]:
        _2219 = mem[mem[160]]
        idx = 0
        while idx < _2219:
            if idx >= mem[mem[160]]:
                revert with 0, 50
            if idx >= mem[mem[160]]:
                revert with 0, 50
            if 0 == mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                _2269 = mem[mem[(32 * idx) + mem[160] + 32]]
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                _2301 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                mem[mem[64]] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _2301
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                require ext_code.size(address(_2269))
                call address(_2269).0xb88d4fde with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _2301, 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                _2265 = mem[mem[(32 * idx) + mem[160] + 32]]
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                _2298 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = _2298
                require ext_code.size(address(_2265))
                staticcall address(_2265).balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(this.address), _2298
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2346 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2384 = mem[_2346]
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                _2417 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                _2436 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _2417
                mem[mem[64] + 100] = _2436
                mem[mem[64] + 132] = 160
                mem[mem[64] + 164] = 0
                require ext_code.size(address(_2265))
                call address(_2265).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _2417, _2436, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                _2474 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = _2474
                require ext_code.size(address(_2265))
                staticcall address(_2265).balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(this.address), _2474
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2495 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                if mem[_2495] < _2384:
                    revert with 0, 17
                if mem[_2495] - _2384 != mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                    if mem[_2495] < _2384:
                        revert with 0, 17
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[160] + 32] + 32] = mem[_2495] - _2384
            if idx == -1:
                revert with 0, 17
            _2219 = mem[mem[160]]
            idx = idx + 1
            continue 
        _2945 = mem[mem[192]]
        idx = 0
        while idx < _2945:
            if idx >= mem[mem[192]]:
                revert with 0, 50
            _2957 = mem[mem[(32 * idx) + mem[192] + 32]]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_2957))
            staticcall address(_2957).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2973 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2993 = mem[_2973]
            if idx >= mem[mem[192]]:
                revert with 0, 50
            _3028 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
            _3044 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = _3028
            _3050 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_3050 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_3050 + 36 len 28]
            mem[64] = _3044 + 196
            mem[_3044 + 132] = 32
            mem[_3044 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_2957)):
                revert with 0, 'Address: call to non-contract'
            _3077 = mem[_3050]
            s = 0
            while s < _3077:
                mem[s + _3044 + 196] = mem[s + _3050 + 32]
                _2945 = mem[mem[192]]
                s = s + 32
                continue 
            if ceil32(_3077) > _3077:
                mem[_3077 + _3044 + 196] = 0
            call address(_2957).mem[_3044 + 196 len 4] with:
                 gas gas_remaining wei
                args mem[_3044 + 200 len _3077 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_3044 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3044 + 200] = 32
                    mem[_3044 + 232] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _3044 + 264] = mem[idx + _3044 + 164]
                        _2945 = mem[mem[192]]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_3044 + 264]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_3044 + 200] = this.address
                require ext_code.size(address(_2957))
                staticcall address(_2957).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_3044 + 196] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _3044 + ceil32(return_data.size) + 196
            else:
                mem[64] = _3044 + ceil32(return_data.size) + 197
                mem[_3044 + 196] = return_data.size
                mem[_3044 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3044 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3044 + ceil32(return_data.size) + 201] = 32
                    mem[_3044 + ceil32(return_data.size) + 233] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _3044 + ceil32(return_data.size) + 265] = mem[idx + _3044 + 164]
                        _2945 = mem[mem[192]]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_3044 + ceil32(return_data.size) + 265]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_3044 + 228] == bool(mem[_3044 + 228])
                    if not mem[_3044 + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_3044 + ceil32(return_data.size) + 201] = this.address
                require ext_code.size(address(_2957))
                staticcall address(_2957).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_3044 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _3044 + ceil32(return_data.size) + ceil32(return_data.size) + 197
            require return_data.size >= 32
            if idx >= mem[mem[192]]:
                revert with 0, 50
            if ext_call.return_data[0] < _2993:
                revert with 0, 17
            if ext_call.return_data[0] - _2993 != mem[mem[(32 * idx) + mem[192] + 32] + 32]:
                if ext_call.return_data[0] < _2993:
                    revert with 0, 17
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                mem[mem[(32 * idx) + mem[192] + 32] + 32] = ext_call.return_data[0] - _2993
            if idx == -1:
                revert with 0, 17
            _2945 = mem[mem[192]]
            idx = idx + 1
            continue 
        mem[0] = stor3
        mem[32] = 6
        stor6[stor3].field_2048 = 1
        stor6[stor3].field_0 = msg.sender or Mask(96, 160, stor6[stor3].field_0)
        _3512 = mem[mem[160]]
        idx = 0
        while idx < _3512:
            if idx >= mem[mem[160]]:
                revert with 0, 50
            stor6[stor3].field_512++
            mem[0] = sha3(stor3, 6) + 2
            stor[(3 * stor6[stor3].field_512) + ('array', 2, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[160] + 32] + 12 len 20]
            stor[(3 * stor6[stor3].field_512) + ('array', 2, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
            stor[(3 * stor6[stor3].field_512) + ('array', 2, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_512 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
            if idx == -1:
                revert with 0, 17
            _3512 = mem[mem[160]]
            idx = idx + 1
            continue 
        _4004 = mem[mem[192]]
        idx = 0
        while idx < _4004:
            if idx >= mem[mem[192]]:
                revert with 0, 50
            stor6[stor3].field_768++
            mem[0] = sha3(stor3, 6) + 3
            stor[(2 * stor6[stor3].field_768) + ('array', 3, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[192] + 32] + 12 len 20]
            stor[(2 * stor6[stor3].field_768) + ('array', 3, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
            if idx == -1:
                revert with 0, 17
            _4004 = mem[mem[192]]
            idx = idx + 1
            continue 
    else:
        if mem[_743]:
            _2221 = mem[mem[160]]
            idx = 0
            while idx < _2221:
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                if 0 == mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                    _2281 = mem[mem[(32 * idx) + mem[160] + 32]]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _2309 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    mem[mem[64]] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _2309
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(address(_2281))
                    call address(_2281).0xb88d4fde with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _2309, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    _2277 = mem[mem[(32 * idx) + mem[160] + 32]]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _2306 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _2306
                    require ext_code.size(address(_2277))
                    staticcall address(_2277).balanceOf(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(this.address), _2306
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2355 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2392 = mem[_2355]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _2424 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _2440 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _2424
                    mem[mem[64] + 100] = _2440
                    mem[mem[64] + 132] = 160
                    mem[mem[64] + 164] = 0
                    require ext_code.size(address(_2277))
                    call address(_2277).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _2424, _2440, 160, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _2480 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _2480
                    require ext_code.size(address(_2277))
                    staticcall address(_2277).balanceOf(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(this.address), _2480
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2497 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    if mem[_2497] < _2392:
                        revert with 0, 17
                    if mem[_2497] - _2392 != mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                        if mem[_2497] < _2392:
                            revert with 0, 17
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[160] + 32] + 32] = mem[_2497] - _2392
                if idx == -1:
                    revert with 0, 17
                _2221 = mem[mem[160]]
                idx = idx + 1
                continue 
            _2947 = mem[mem[192]]
            idx = 0
            while idx < _2947:
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                _2961 = mem[mem[(32 * idx) + mem[192] + 32]]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_2961))
                staticcall address(_2961).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2976 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3001 = mem[_2976]
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                _3035 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                _3046 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = _3035
                _3053 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_3053 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_3053 + 36 len 28]
                mem[64] = _3046 + 196
                mem[_3046 + 132] = 32
                mem[_3046 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(_2961)):
                    revert with 0, 'Address: call to non-contract'
                _3080 = mem[_3053]
                s = 0
                while s < _3080:
                    mem[s + _3046 + 196] = mem[s + _3053 + 32]
                    _2947 = mem[mem[192]]
                    s = s + 32
                    continue 
                if ceil32(_3080) > _3080:
                    mem[_3080 + _3046 + 196] = 0
                call address(_2961).mem[_3046 + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[_3046 + 200 len _3080 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_3046 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3046 + 200] = 32
                        mem[_3046 + 232] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _3046 + 264] = mem[idx + _3046 + 164]
                            _2947 = mem[mem[192]]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_3046 + 264]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_3046 + 200] = this.address
                    require ext_code.size(address(_2961))
                    staticcall address(_2961).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_3046 + 196] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _3046 + ceil32(return_data.size) + 196
                else:
                    mem[64] = _3046 + ceil32(return_data.size) + 197
                    mem[_3046 + 196] = return_data.size
                    mem[_3046 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3046 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3046 + ceil32(return_data.size) + 201] = 32
                        mem[_3046 + ceil32(return_data.size) + 233] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _3046 + ceil32(return_data.size) + 265] = mem[idx + _3046 + 164]
                            _2947 = mem[mem[192]]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_3046 + ceil32(return_data.size) + 265]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_3046 + 228] == bool(mem[_3046 + 228])
                        if not mem[_3046 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_3046 + ceil32(return_data.size) + 201] = this.address
                    require ext_code.size(address(_2961))
                    staticcall address(_2961).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_3046 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _3046 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                require return_data.size >= 32
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                if ext_call.return_data[0] < _3001:
                    revert with 0, 17
                if ext_call.return_data[0] - _3001 != mem[mem[(32 * idx) + mem[192] + 32] + 32]:
                    if ext_call.return_data[0] < _3001:
                        revert with 0, 17
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[192] + 32] + 32] = ext_call.return_data[0] - _3001
                if idx == -1:
                    revert with 0, 17
                _2947 = mem[mem[192]]
                idx = idx + 1
                continue 
            mem[0] = stor3
            mem[32] = 6
            stor6[stor3].field_2048 = 1
            stor6[stor3].field_0 = msg.sender or Mask(96, 160, stor6[stor3].field_0)
            _3514 = mem[mem[160]]
            idx = 0
            while idx < _3514:
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                stor6[stor3].field_512++
                mem[0] = sha3(stor3, 6) + 2
                stor[(3 * stor6[stor3].field_512) + ('array', 2, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[160] + 32] + 12 len 20]
                stor[(3 * stor6[stor3].field_512) + ('array', 2, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                stor[(3 * stor6[stor3].field_512) + ('array', 2, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_512 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                if idx == -1:
                    revert with 0, 17
                _3514 = mem[mem[160]]
                idx = idx + 1
                continue 
            _4006 = mem[mem[192]]
            idx = 0
            while idx < _4006:
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                stor6[stor3].field_768++
                mem[0] = sha3(stor3, 6) + 3
                stor[(2 * stor6[stor3].field_768) + ('array', 3, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[192] + 32] + 12 len 20]
                stor[(2 * stor6[stor3].field_768) + ('array', 3, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                if idx == -1:
                    revert with 0, 17
                _4006 = mem[mem[192]]
                idx = idx + 1
                continue 
        else:
            _2223 = mem[mem[160]]
            idx = 0
            while idx < _2223:
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                if 0 == mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                    _2293 = mem[mem[(32 * idx) + mem[160] + 32]]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _2317 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    mem[mem[64]] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _2317
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(address(_2293))
                    call address(_2293).0xb88d4fde with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _2317, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    _2289 = mem[mem[(32 * idx) + mem[160] + 32]]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _2314 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _2314
                    require ext_code.size(address(_2289))
                    staticcall address(_2289).balanceOf(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(this.address), _2314
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2364 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2400 = mem[_2364]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _2431 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _2444 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _2431
                    mem[mem[64] + 100] = _2444
                    mem[mem[64] + 132] = 160
                    mem[mem[64] + 164] = 0
                    require ext_code.size(address(_2289))
                    call address(_2289).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _2431, _2444, 160, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _2486 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _2486
                    require ext_code.size(address(_2289))
                    staticcall address(_2289).balanceOf(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(this.address), _2486
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2499 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    if mem[_2499] < _2400:
                        revert with 0, 17
                    if mem[_2499] - _2400 != mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                        if mem[_2499] < _2400:
                            revert with 0, 17
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[160] + 32] + 32] = mem[_2499] - _2400
                if idx == -1:
                    revert with 0, 17
                _2223 = mem[mem[160]]
                idx = idx + 1
                continue 
            _2949 = mem[mem[192]]
            idx = 0
            while idx < _2949:
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                _2965 = mem[mem[(32 * idx) + mem[192] + 32]]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_2965))
                staticcall address(_2965).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2979 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3009 = mem[_2979]
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                _3042 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                _3048 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = _3042
                _3056 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_3056 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_3056 + 36 len 28]
                mem[64] = _3048 + 196
                mem[_3048 + 132] = 32
                mem[_3048 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(_2965)):
                    revert with 0, 'Address: call to non-contract'
                _3083 = mem[_3056]
                s = 0
                while s < _3083:
                    mem[s + _3048 + 196] = mem[s + _3056 + 32]
                    _2949 = mem[mem[192]]
                    s = s + 32
                    continue 
                if ceil32(_3083) > _3083:
                    mem[_3083 + _3048 + 196] = 0
                call address(_2965).mem[_3048 + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[_3048 + 200 len _3083 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_3048 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3048 + 200] = 32
                        mem[_3048 + 232] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _3048 + 264] = mem[idx + _3048 + 164]
                            _2949 = mem[mem[192]]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_3048 + 264]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_3048 + 200] = this.address
                    require ext_code.size(address(_2965))
                    staticcall address(_2965).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_3048 + 196] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _3048 + ceil32(return_data.size) + 196
                else:
                    mem[64] = _3048 + ceil32(return_data.size) + 197
                    mem[_3048 + 196] = return_data.size
                    mem[_3048 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3048 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3048 + ceil32(return_data.size) + 201] = 32
                        mem[_3048 + ceil32(return_data.size) + 233] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _3048 + ceil32(return_data.size) + 265] = mem[idx + _3048 + 164]
                            _2949 = mem[mem[192]]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_3048 + ceil32(return_data.size) + 265]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_3048 + 228] == bool(mem[_3048 + 228])
                        if not mem[_3048 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_3048 + ceil32(return_data.size) + 201] = this.address
                    require ext_code.size(address(_2965))
                    staticcall address(_2965).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_3048 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _3048 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                require return_data.size >= 32
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                if ext_call.return_data[0] < _3009:
                    revert with 0, 17
                if ext_call.return_data[0] - _3009 != mem[mem[(32 * idx) + mem[192] + 32] + 32]:
                    if ext_call.return_data[0] < _3009:
                        revert with 0, 17
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[192] + 32] + 32] = ext_call.return_data[0] - _3009
                if idx == -1:
                    revert with 0, 17
                _2949 = mem[mem[192]]
                idx = idx + 1
                continue 
            mem[0] = stor3
            mem[32] = 6
            stor6[stor3].field_2048 = 1
            stor6[stor3].field_0 = msg.sender or Mask(96, 160, stor6[stor3].field_0)
            _3516 = mem[mem[160]]
            idx = 0
            while idx < _3516:
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                stor6[stor3].field_512++
                mem[0] = sha3(stor3, 6) + 2
                stor[(3 * stor6[stor3].field_512) + ('array', 2, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[160] + 32] + 12 len 20]
                stor[(3 * stor6[stor3].field_512) + ('array', 2, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                stor[(3 * stor6[stor3].field_512) + ('array', 2, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_512 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                if idx == -1:
                    revert with 0, 17
                _3516 = mem[mem[160]]
                idx = idx + 1
                continue 
            _4008 = mem[mem[192]]
            idx = 0
            while idx < _4008:
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                stor6[stor3].field_768++
                mem[0] = sha3(stor3, 6) + 3
                stor[(2 * stor6[stor3].field_768) + ('array', 3, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_0 = mem[mem[(32 * idx) + mem[192] + 32] + 12 len 20]
                stor[(2 * stor6[stor3].field_768) + ('array', 3, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor6', 6)))].field_256 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                if idx == -1:
                    revert with 0, 17
                _4008 = mem[mem[192]]
                idx = idx + 1
                continue 
    if msg.value > fee:
        if msg.value < fee:
            revert with 0, 17
        stor6[stor3].field_256 = msg.value - fee
        if stor4 > !(msg.value - fee):
            revert with 0, 17
        stor4 = stor4 + msg.value - fee
    stor6[stor3].field_1024 = address(cd[4])
    emit 0xffd321d9: msg.sender, address(cd[4]), stor3
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
        _1516 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[idx] == address(cd[idx])
        mem[_1516] = cd[idx]
        mem[_1516 + 32] = cd[(idx + 32)]
        mem[_1516 + 64] = cd[(idx + 64)]
        mem[s] = _1516
        s = s + 32
        idx = idx + 96
        continue 
    mem[160] = 224
    require ('cd', 36)[2] <= test266151307()
    require cd[36] + ('cd', 36)[2] + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36)[2] + 4)] > test266151307():
        revert with 0, 65
    _1517 = mem[64]
    if mem[64] + ceil32(32 * cd[(cd[36] + ('cd', 36)[2] + 4)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[36] + ('cd', 36)[2] + 4)]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * cd[(cd[36] + ('cd', 36)[2] + 4)]) + 1
    mem[_1517] = cd[(cd[36] + ('cd', 36)[2] + 4)]
    require cd[36] + ('cd', 36)[2] + (64 * cd[(cd[36] + ('cd', 36)[2] + 4)]) + 36 <= calldata.size
    idx = cd[36] + ('cd', 36)[2] + 36
    s = _1517 + 32
    while idx < cd[36] + ('cd', 36)[2] + (64 * cd[(cd[36] + ('cd', 36)[2] + 4)]) + 36:
        require calldata.size - idx >= 64
        _3029 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[idx] == address(cd[idx])
        mem[_3029] = cd[idx]
        mem[_3029 + 32] = cd[(idx + 32)]
        mem[s] = _3029
        idx = idx + 64
        s = s + 32
        continue 
    mem[192] = _1517
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
    _3039 = mem[64]
    mem[64] = mem[64] + 128
    mem[_3039] = stor6[cd[4]].field_1024
    mem[_3039 + 32] = stor6[cd[4]].field_1280
    _3040 = mem[64]
    mem[64] = mem[64] + (32 * stor6[cd[4]].field_1536) + 32
    mem[_3040] = stor6[cd[4]].field_1536
    if not stor6[cd[4]].field_1536:
        mem[_3039 + 64] = _3040
        _3042 = mem[64]
        mem[64] = mem[64] + (32 * stor6[cd[4]].field_1792) + 32
        mem[_3042] = stor6[cd[4]].field_1792
        s = _3042 + 32
        idx = 0
        while idx < stor6[cd[4]].field_1792:
            mem[0] = sha3(cd[4], 6) + 7
            _4541 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4541] = stor[('array', 7, ('map', ('cd', 4), ('name', 'stor6', 6))) + (2 * idx)].field_0
            mem[_4541 + 32] = stor[('array', 7, ('map', ('cd', 4), ('name', 'stor6', 6))) + (2 * idx)].field_256
            mem[s] = _4541
            s = s + 32
            idx = idx + 1
            continue 
        mem[_3039 + 96] = _3042
        if mem[mem[_3039 + 64]]:
            revert with 0, 'Tradescrow: swap already initiated'
        if mem[_3042]:
            revert with 0, 'Tradescrow: swap already initiated'
        if mem[_3039 + 32]:
            revert with 0, 'Tradescrow: swap already initiated'
        mem[0] = cd[4]
        mem[32] = 6
        if stor6[cd[4]].field_2048 != 1:
            revert with 0, 'Tradescrow: Swap closed. Only user cancel enabled'
        if mem[mem[160]]:
            _6036 = mem[mem[160]]
            idx = 0
            while idx < _6036:
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                if 0 == mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                    _6092 = mem[mem[(32 * idx) + mem[160] + 32]]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _6125 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    mem[mem[64]] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _6125
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(address(_6092))
                    call address(_6092).0xb88d4fde with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _6125, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    _6088 = mem[mem[(32 * idx) + mem[160] + 32]]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _6122 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _6122
                    require ext_code.size(address(_6088))
                    staticcall address(_6088).balanceOf(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(this.address), _6122
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6188 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6230 = mem[_6188]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _6252 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _6274 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _6252
                    mem[mem[64] + 100] = _6274
                    mem[mem[64] + 132] = 160
                    mem[mem[64] + 164] = 0
                    require ext_code.size(address(_6088))
                    call address(_6088).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _6252, _6274, 160, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _6316 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _6316
                    require ext_code.size(address(_6088))
                    staticcall address(_6088).balanceOf(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(this.address), _6316
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6336 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    if mem[_6336] < _6230:
                        revert with 0, 17
                    if mem[_6336] - _6230 != mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                        if mem[_6336] < _6230:
                            revert with 0, 17
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[160] + 32] + 32] = mem[_6336] - _6230
                if idx == -1:
                    revert with 0, 17
                _6036 = mem[mem[160]]
                idx = idx + 1
                continue 
            _7508 = mem[mem[192]]
            idx = 0
            while idx < _7508:
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                _7532 = mem[mem[(32 * idx) + mem[192] + 32]]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_7532))
                staticcall address(_7532).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7582 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7678 = mem[_7582]
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                _7748 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                _7768 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = _7748
                _7796 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_7796 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_7796 + 36 len 28]
                mem[64] = _7768 + 196
                mem[_7768 + 132] = 32
                mem[_7768 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(_7532)):
                    revert with 0, 'Address: call to non-contract'
                _7879 = mem[_7796]
                s = 0
                while s < _7879:
                    mem[s + _7768 + 196] = mem[s + _7796 + 32]
                    _7508 = mem[mem[192]]
                    s = s + 32
                    continue 
                if ceil32(_7879) > _7879:
                    mem[_7879 + _7768 + 196] = 0
                call address(_7532).mem[_7768 + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[_7768 + 200 len _7879 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_7768 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_7768 + 200] = 32
                        mem[_7768 + 232] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _7768 + 264] = mem[idx + _7768 + 164]
                            _7508 = mem[mem[192]]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_7768 + 264]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_7768 + 200] = this.address
                    require ext_code.size(address(_7532))
                    staticcall address(_7532).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_7768 + 196] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _7768 + ceil32(return_data.size) + 196
                else:
                    mem[64] = _7768 + ceil32(return_data.size) + 197
                    mem[_7768 + 196] = return_data.size
                    mem[_7768 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_7768 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_7768 + ceil32(return_data.size) + 201] = 32
                        mem[_7768 + ceil32(return_data.size) + 233] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _7768 + ceil32(return_data.size) + 265] = mem[idx + _7768 + 164]
                            _7508 = mem[mem[192]]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_7768 + ceil32(return_data.size) + 265]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_7768 + 228] == bool(mem[_7768 + 228])
                        if not mem[_7768 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_7768 + ceil32(return_data.size) + 201] = this.address
                    require ext_code.size(address(_7532))
                    staticcall address(_7532).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_7768 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _7768 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                require return_data.size >= 32
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                if ext_call.return_data[0] < _7678:
                    revert with 0, 17
                if ext_call.return_data[0] - _7678 != mem[mem[(32 * idx) + mem[192] + 32] + 32]:
                    if ext_call.return_data[0] < _7678:
                        revert with 0, 17
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[192] + 32] + 32] = ext_call.return_data[0] - _7678
                if idx == -1:
                    revert with 0, 17
                _7508 = mem[mem[192]]
                idx = idx + 1
                continue 
            _8801 = mem[mem[160]]
            idx = 0
            while idx < _8801:
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
                _8801 = mem[mem[160]]
                idx = idx + 1
                continue 
            _9863 = mem[mem[192]]
            idx = 0
            while idx < _9863:
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
                _9863 = mem[mem[192]]
                idx = idx + 1
                continue 
        else:
            if mem[mem[192]]:
                _6038 = mem[mem[160]]
                idx = 0
                while idx < _6038:
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    if 0 == mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                        _6104 = mem[mem[(32 * idx) + mem[160] + 32]]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _6134 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        mem[mem[64]] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _6134
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_6104))
                        call address(_6104).0xb88d4fde with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _6134, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        _6100 = mem[mem[(32 * idx) + mem[160] + 32]]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _6131 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _6131
                        require ext_code.size(address(_6100))
                        staticcall address(_6100).balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(this.address), _6131
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6193 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6233 = mem[_6193]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _6259 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _6278 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _6259
                        mem[mem[64] + 100] = _6278
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        require ext_code.size(address(_6100))
                        call address(_6100).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _6259, _6278, 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _6321 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _6321
                        require ext_code.size(address(_6100))
                        staticcall address(_6100).balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(this.address), _6321
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6338 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        if mem[_6338] < _6233:
                            revert with 0, 17
                        if mem[_6338] - _6233 != mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                            if mem[_6338] < _6233:
                                revert with 0, 17
                            if idx >= mem[mem[160]]:
                                revert with 0, 50
                            mem[mem[(32 * idx) + mem[160] + 32] + 32] = mem[_6338] - _6233
                    if idx == -1:
                        revert with 0, 17
                    _6038 = mem[mem[160]]
                    idx = idx + 1
                    continue 
                _7510 = mem[mem[192]]
                idx = 0
                while idx < _7510:
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    _7536 = mem[mem[(32 * idx) + mem[192] + 32]]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_7536))
                    staticcall address(_7536).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7586 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7682 = mem[_7586]
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    _7750 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                    _7769 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = _7750
                    _7799 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_7799 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_7799 + 36 len 28]
                    mem[64] = _7769 + 196
                    mem[_7769 + 132] = 32
                    mem[_7769 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_7536)):
                        revert with 0, 'Address: call to non-contract'
                    _7881 = mem[_7799]
                    s = 0
                    while s < _7881:
                        mem[s + _7769 + 196] = mem[s + _7799 + 32]
                        _7510 = mem[mem[192]]
                        s = s + 32
                        continue 
                    if ceil32(_7881) > _7881:
                        mem[_7881 + _7769 + 196] = 0
                    call address(_7536).mem[_7769 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_7769 + 200 len _7881 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_7769 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7769 + 200] = 32
                            mem[_7769 + 232] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _7769 + 264] = mem[idx + _7769 + 164]
                                _7510 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_7769 + 264]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_7769 + 200] = this.address
                        require ext_code.size(address(_7536))
                        staticcall address(_7536).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_7769 + 196] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7769 + ceil32(return_data.size) + 196
                    else:
                        mem[64] = _7769 + ceil32(return_data.size) + 197
                        mem[_7769 + 196] = return_data.size
                        mem[_7769 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_7769 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7769 + ceil32(return_data.size) + 201] = 32
                            mem[_7769 + ceil32(return_data.size) + 233] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _7769 + ceil32(return_data.size) + 265] = mem[idx + _7769 + 164]
                                _7510 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_7769 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_7769 + 228] == bool(mem[_7769 + 228])
                            if not mem[_7769 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_7769 + ceil32(return_data.size) + 201] = this.address
                        require ext_code.size(address(_7536))
                        staticcall address(_7536).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_7769 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7769 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                    require return_data.size >= 32
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    if ext_call.return_data[0] < _7682:
                        revert with 0, 17
                    if ext_call.return_data[0] - _7682 != mem[mem[(32 * idx) + mem[192] + 32] + 32]:
                        if ext_call.return_data[0] < _7682:
                            revert with 0, 17
                        if idx >= mem[mem[192]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[192] + 32] + 32] = ext_call.return_data[0] - _7682
                    if idx == -1:
                        revert with 0, 17
                    _7510 = mem[mem[192]]
                    idx = idx + 1
                    continue 
                _8803 = mem[mem[160]]
                idx = 0
                while idx < _8803:
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
                    _8803 = mem[mem[160]]
                    idx = idx + 1
                    continue 
                _9865 = mem[mem[192]]
                idx = 0
                while idx < _9865:
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
                    _9865 = mem[mem[192]]
                    idx = idx + 1
                    continue 
            else:
                _6040 = mem[mem[160]]
                idx = 0
                while idx < _6040:
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    if 0 == mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                        _6116 = mem[mem[(32 * idx) + mem[160] + 32]]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _6143 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        mem[mem[64]] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _6143
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_6116))
                        call address(_6116).0xb88d4fde with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _6143, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        _6112 = mem[mem[(32 * idx) + mem[160] + 32]]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _6140 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _6140
                        require ext_code.size(address(_6112))
                        staticcall address(_6112).balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(this.address), _6140
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6198 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6236 = mem[_6198]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _6266 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _6282 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _6266
                        mem[mem[64] + 100] = _6282
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        require ext_code.size(address(_6112))
                        call address(_6112).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _6266, _6282, 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _6326 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _6326
                        require ext_code.size(address(_6112))
                        staticcall address(_6112).balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(this.address), _6326
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6340 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        if mem[_6340] < _6236:
                            revert with 0, 17
                        if mem[_6340] - _6236 != mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                            if mem[_6340] < _6236:
                                revert with 0, 17
                            if idx >= mem[mem[160]]:
                                revert with 0, 50
                            mem[mem[(32 * idx) + mem[160] + 32] + 32] = mem[_6340] - _6236
                    if idx == -1:
                        revert with 0, 17
                    _6040 = mem[mem[160]]
                    idx = idx + 1
                    continue 
                _7512 = mem[mem[192]]
                idx = 0
                while idx < _7512:
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    _7540 = mem[mem[(32 * idx) + mem[192] + 32]]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_7540))
                    staticcall address(_7540).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7590 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7686 = mem[_7590]
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    _7752 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                    _7770 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = _7752
                    _7802 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_7802 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_7802 + 36 len 28]
                    mem[64] = _7770 + 196
                    mem[_7770 + 132] = 32
                    mem[_7770 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_7540)):
                        revert with 0, 'Address: call to non-contract'
                    _7883 = mem[_7802]
                    s = 0
                    while s < _7883:
                        mem[s + _7770 + 196] = mem[s + _7802 + 32]
                        _7512 = mem[mem[192]]
                        s = s + 32
                        continue 
                    if ceil32(_7883) > _7883:
                        mem[_7883 + _7770 + 196] = 0
                    call address(_7540).mem[_7770 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_7770 + 200 len _7883 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_7770 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7770 + 200] = 32
                            mem[_7770 + 232] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _7770 + 264] = mem[idx + _7770 + 164]
                                _7512 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_7770 + 264]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_7770 + 200] = this.address
                        require ext_code.size(address(_7540))
                        staticcall address(_7540).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_7770 + 196] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7770 + ceil32(return_data.size) + 196
                    else:
                        mem[64] = _7770 + ceil32(return_data.size) + 197
                        mem[_7770 + 196] = return_data.size
                        mem[_7770 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_7770 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7770 + ceil32(return_data.size) + 201] = 32
                            mem[_7770 + ceil32(return_data.size) + 233] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _7770 + ceil32(return_data.size) + 265] = mem[idx + _7770 + 164]
                                _7512 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_7770 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_7770 + 228] == bool(mem[_7770 + 228])
                            if not mem[_7770 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_7770 + ceil32(return_data.size) + 201] = this.address
                        require ext_code.size(address(_7540))
                        staticcall address(_7540).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_7770 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7770 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                    require return_data.size >= 32
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    if ext_call.return_data[0] < _7686:
                        revert with 0, 17
                    if ext_call.return_data[0] - _7686 != mem[mem[(32 * idx) + mem[192] + 32] + 32]:
                        if ext_call.return_data[0] < _7686:
                            revert with 0, 17
                        if idx >= mem[mem[192]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[192] + 32] + 32] = ext_call.return_data[0] - _7686
                    if idx == -1:
                        revert with 0, 17
                    _7512 = mem[mem[192]]
                    idx = idx + 1
                    continue 
                _8805 = mem[mem[160]]
                idx = 0
                while idx < _8805:
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
                    _8805 = mem[mem[160]]
                    idx = idx + 1
                    continue 
                _9867 = mem[mem[192]]
                idx = 0
                while idx < _9867:
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
                    _9867 = mem[mem[192]]
                    idx = idx + 1
                    continue 
    else:
        mem[0] = sha3(cd[4], 6) + 6
        _3044 = mem[64]
        mem[64] = mem[64] + 96
        mem[_3044] = stor6[cd[4]][6].field_0
        mem[_3044 + 32] = stor6[cd[4]][6].field_256
        mem[_3044 + 64] = stor6[cd[4]][6].field_512
        mem[_3040 + 32] = _3044
        s = _3040 + 64
        idx = 1
        while idx < stor6[cd[4]].field_1536:
            mem[0] = sha3(cd[4], 6) + 6
            _4544 = mem[64]
            mem[64] = mem[64] + 96
            mem[_4544] = stor[('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6))) + (3 * idx)].field_0
            mem[_4544 + 32] = stor[('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6))) + (3 * idx)].field_256
            mem[_4544 + 64] = stor[('array', 6, ('map', ('cd', 4), ('name', 'stor6', 6))) + (3 * idx)].field_512
            mem[s] = _4544
            s = s + 32
            idx = idx + 1
            continue 
        mem[_3039 + 64] = _3040
        _4542 = mem[64]
        mem[64] = mem[64] + (32 * stor6[cd[4]].field_1792) + 32
        mem[_4542] = stor6[cd[4]].field_1792
        s = _4542 + 32
        idx = 0
        while idx < stor6[cd[4]].field_1792:
            mem[0] = sha3(cd[4], 6) + 7
            _6048 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6048] = stor[('array', 7, ('map', ('cd', 4), ('name', 'stor6', 6))) + (2 * idx)].field_0
            mem[_6048 + 32] = stor[('array', 7, ('map', ('cd', 4), ('name', 'stor6', 6))) + (2 * idx)].field_256
            mem[s] = _6048
            s = s + 32
            idx = idx + 1
            continue 
        mem[_3039 + 96] = _4542
        if mem[mem[_3039 + 64]]:
            revert with 0, 'Tradescrow: swap already initiated'
        if mem[_4542]:
            revert with 0, 'Tradescrow: swap already initiated'
        if mem[_3039 + 32]:
            revert with 0, 'Tradescrow: swap already initiated'
        mem[0] = cd[4]
        mem[32] = 6
        if stor6[cd[4]].field_2048 != 1:
            revert with 0, 'Tradescrow: Swap closed. Only user cancel enabled'
        if mem[mem[160]]:
            _7514 = mem[mem[160]]
            idx = 0
            while idx < _7514:
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                if idx >= mem[mem[160]]:
                    revert with 0, 50
                if 0 == mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                    _7600 = mem[mem[(32 * idx) + mem[160] + 32]]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _7654 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    mem[mem[64]] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _7654
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(address(_7600))
                    call address(_7600).0xb88d4fde with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _7654, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    _7596 = mem[mem[(32 * idx) + mem[160] + 32]]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _7651 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _7651
                    require ext_code.size(address(_7596))
                    staticcall address(_7596).balanceOf(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(this.address), _7651
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7757 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7806 = mem[_7757]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _7829 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _7848 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _7829
                    mem[mem[64] + 100] = _7848
                    mem[mem[64] + 132] = 160
                    mem[mem[64] + 164] = 0
                    require ext_code.size(address(_7596))
                    call address(_7596).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _7829, _7848, 160, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    _7912 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _7912
                    require ext_code.size(address(_7596))
                    staticcall address(_7596).balanceOf(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(this.address), _7912
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7931 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    if mem[_7931] < _7806:
                        revert with 0, 17
                    if mem[_7931] - _7806 != mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                        if mem[_7931] < _7806:
                            revert with 0, 17
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[160] + 32] + 32] = mem[_7931] - _7806
                if idx == -1:
                    revert with 0, 17
                _7514 = mem[mem[160]]
                idx = idx + 1
                continue 
            _8807 = mem[mem[192]]
            idx = 0
            while idx < _8807:
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                _8852 = mem[mem[(32 * idx) + mem[192] + 32]]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_8852))
                staticcall address(_8852).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8905 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _8944 = mem[_8905]
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                _8993 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                _9022 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = _8993
                _9038 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_9038 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_9038 + 36 len 28]
                mem[64] = _9022 + 196
                mem[_9022 + 132] = 32
                mem[_9022 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(_8852)):
                    revert with 0, 'Address: call to non-contract'
                _9169 = mem[_9038]
                s = 0
                while s < _9169:
                    mem[s + _9022 + 196] = mem[s + _9038 + 32]
                    _8807 = mem[mem[192]]
                    s = s + 32
                    continue 
                if ceil32(_9169) > _9169:
                    mem[_9169 + _9022 + 196] = 0
                call address(_8852).mem[_9022 + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[_9022 + 200 len _9169 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_9022 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_9022 + 200] = 32
                        mem[_9022 + 232] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _9022 + 264] = mem[idx + _9022 + 164]
                            _8807 = mem[mem[192]]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_9022 + 264]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_9022 + 200] = this.address
                    require ext_code.size(address(_8852))
                    staticcall address(_8852).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_9022 + 196] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _9022 + ceil32(return_data.size) + 196
                else:
                    mem[64] = _9022 + ceil32(return_data.size) + 197
                    mem[_9022 + 196] = return_data.size
                    mem[_9022 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_9022 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_9022 + ceil32(return_data.size) + 201] = 32
                        mem[_9022 + ceil32(return_data.size) + 233] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _9022 + ceil32(return_data.size) + 265] = mem[idx + _9022 + 164]
                            _8807 = mem[mem[192]]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_9022 + ceil32(return_data.size) + 265]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_9022 + 228] == bool(mem[_9022 + 228])
                        if not mem[_9022 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_9022 + ceil32(return_data.size) + 201] = this.address
                    require ext_code.size(address(_8852))
                    staticcall address(_8852).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_9022 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _9022 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                require return_data.size >= 32
                if idx >= mem[mem[192]]:
                    revert with 0, 50
                if ext_call.return_data[0] < _8944:
                    revert with 0, 17
                if ext_call.return_data[0] - _8944 != mem[mem[(32 * idx) + mem[192] + 32] + 32]:
                    if ext_call.return_data[0] < _8944:
                        revert with 0, 17
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[192] + 32] + 32] = ext_call.return_data[0] - _8944
                if idx == -1:
                    revert with 0, 17
                _8807 = mem[mem[192]]
                idx = idx + 1
                continue 
            _9869 = mem[mem[160]]
            idx = 0
            while idx < _9869:
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
                _9869 = mem[mem[160]]
                idx = idx + 1
                continue 
            _10436 = mem[mem[192]]
            idx = 0
            while idx < _10436:
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
                _10436 = mem[mem[192]]
                idx = idx + 1
                continue 
        else:
            if mem[mem[192]]:
                _7516 = mem[mem[160]]
                idx = 0
                while idx < _7516:
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    if 0 == mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                        _7612 = mem[mem[(32 * idx) + mem[160] + 32]]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _7663 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        mem[mem[64]] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _7663
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_7612))
                        call address(_7612).0xb88d4fde with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _7663, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        _7608 = mem[mem[(32 * idx) + mem[160] + 32]]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _7660 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _7660
                        require ext_code.size(address(_7608))
                        staticcall address(_7608).balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(this.address), _7660
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7762 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7809 = mem[_7762]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _7836 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _7852 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _7836
                        mem[mem[64] + 100] = _7852
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        require ext_code.size(address(_7608))
                        call address(_7608).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _7836, _7852, 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _7917 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _7917
                        require ext_code.size(address(_7608))
                        staticcall address(_7608).balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(this.address), _7917
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7933 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        if mem[_7933] < _7809:
                            revert with 0, 17
                        if mem[_7933] - _7809 != mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                            if mem[_7933] < _7809:
                                revert with 0, 17
                            if idx >= mem[mem[160]]:
                                revert with 0, 50
                            mem[mem[(32 * idx) + mem[160] + 32] + 32] = mem[_7933] - _7809
                    if idx == -1:
                        revert with 0, 17
                    _7516 = mem[mem[160]]
                    idx = idx + 1
                    continue 
                _8809 = mem[mem[192]]
                idx = 0
                while idx < _8809:
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    _8856 = mem[mem[(32 * idx) + mem[192] + 32]]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_8856))
                    staticcall address(_8856).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8909 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _8948 = mem[_8909]
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    _8995 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                    _9023 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = _8995
                    _9041 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_9041 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_9041 + 36 len 28]
                    mem[64] = _9023 + 196
                    mem[_9023 + 132] = 32
                    mem[_9023 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_8856)):
                        revert with 0, 'Address: call to non-contract'
                    _9171 = mem[_9041]
                    s = 0
                    while s < _9171:
                        mem[s + _9023 + 196] = mem[s + _9041 + 32]
                        _8809 = mem[mem[192]]
                        s = s + 32
                        continue 
                    if ceil32(_9171) > _9171:
                        mem[_9171 + _9023 + 196] = 0
                    call address(_8856).mem[_9023 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_9023 + 200 len _9171 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_9023 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_9023 + 200] = 32
                            mem[_9023 + 232] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _9023 + 264] = mem[idx + _9023 + 164]
                                _8809 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_9023 + 264]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9023 + 200] = this.address
                        require ext_code.size(address(_8856))
                        staticcall address(_8856).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_9023 + 196] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _9023 + ceil32(return_data.size) + 196
                    else:
                        mem[64] = _9023 + ceil32(return_data.size) + 197
                        mem[_9023 + 196] = return_data.size
                        mem[_9023 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_9023 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_9023 + ceil32(return_data.size) + 201] = 32
                            mem[_9023 + ceil32(return_data.size) + 233] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _9023 + ceil32(return_data.size) + 265] = mem[idx + _9023 + 164]
                                _8809 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_9023 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9023 + 228] == bool(mem[_9023 + 228])
                            if not mem[_9023 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9023 + ceil32(return_data.size) + 201] = this.address
                        require ext_code.size(address(_8856))
                        staticcall address(_8856).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_9023 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _9023 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                    require return_data.size >= 32
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    if ext_call.return_data[0] < _8948:
                        revert with 0, 17
                    if ext_call.return_data[0] - _8948 != mem[mem[(32 * idx) + mem[192] + 32] + 32]:
                        if ext_call.return_data[0] < _8948:
                            revert with 0, 17
                        if idx >= mem[mem[192]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[192] + 32] + 32] = ext_call.return_data[0] - _8948
                    if idx == -1:
                        revert with 0, 17
                    _8809 = mem[mem[192]]
                    idx = idx + 1
                    continue 
                _9871 = mem[mem[160]]
                idx = 0
                while idx < _9871:
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
                    _9871 = mem[mem[160]]
                    idx = idx + 1
                    continue 
                _10438 = mem[mem[192]]
                idx = 0
                while idx < _10438:
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
                    _10438 = mem[mem[192]]
                    idx = idx + 1
                    continue 
            else:
                _7518 = mem[mem[160]]
                idx = 0
                while idx < _7518:
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    if idx >= mem[mem[160]]:
                        revert with 0, 50
                    if 0 == mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                        _7624 = mem[mem[(32 * idx) + mem[160] + 32]]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _7672 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        mem[mem[64]] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _7672
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_7624))
                        call address(_7624).0xb88d4fde with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _7672, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        _7620 = mem[mem[(32 * idx) + mem[160] + 32]]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _7669 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _7669
                        require ext_code.size(address(_7620))
                        staticcall address(_7620).balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(this.address), _7669
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7767 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7812 = mem[_7767]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _7843 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _7856 = mem[mem[(32 * idx) + mem[160] + 32] + 32]
                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _7843
                        mem[mem[64] + 100] = _7856
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        require ext_code.size(address(_7620))
                        call address(_7620).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _7843, _7856, 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        _7922 = mem[mem[(32 * idx) + mem[160] + 32] + 64]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _7922
                        require ext_code.size(address(_7620))
                        staticcall address(_7620).balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(this.address), _7922
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7935 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[mem[160]]:
                            revert with 0, 50
                        if mem[_7935] < _7812:
                            revert with 0, 17
                        if mem[_7935] - _7812 != mem[mem[(32 * idx) + mem[160] + 32] + 32]:
                            if mem[_7935] < _7812:
                                revert with 0, 17
                            if idx >= mem[mem[160]]:
                                revert with 0, 50
                            mem[mem[(32 * idx) + mem[160] + 32] + 32] = mem[_7935] - _7812
                    if idx == -1:
                        revert with 0, 17
                    _7518 = mem[mem[160]]
                    idx = idx + 1
                    continue 
                _8811 = mem[mem[192]]
                idx = 0
                while idx < _8811:
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    _8860 = mem[mem[(32 * idx) + mem[192] + 32]]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_8860))
                    staticcall address(_8860).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8913 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _8952 = mem[_8913]
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    _8997 = mem[mem[(32 * idx) + mem[192] + 32] + 32]
                    _9024 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = _8997
                    _9044 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_9044 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_9044 + 36 len 28]
                    mem[64] = _9024 + 196
                    mem[_9024 + 132] = 32
                    mem[_9024 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_8860)):
                        revert with 0, 'Address: call to non-contract'
                    _9173 = mem[_9044]
                    s = 0
                    while s < _9173:
                        mem[s + _9024 + 196] = mem[s + _9044 + 32]
                        _8811 = mem[mem[192]]
                        s = s + 32
                        continue 
                    if ceil32(_9173) > _9173:
                        mem[_9173 + _9024 + 196] = 0
                    call address(_8860).mem[_9024 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_9024 + 200 len _9173 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_9024 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_9024 + 200] = 32
                            mem[_9024 + 232] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _9024 + 264] = mem[idx + _9024 + 164]
                                _8811 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_9024 + 264]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9024 + 200] = this.address
                        require ext_code.size(address(_8860))
                        staticcall address(_8860).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_9024 + 196] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _9024 + ceil32(return_data.size) + 196
                    else:
                        mem[64] = _9024 + ceil32(return_data.size) + 197
                        mem[_9024 + 196] = return_data.size
                        mem[_9024 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_9024 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_9024 + ceil32(return_data.size) + 201] = 32
                            mem[_9024 + ceil32(return_data.size) + 233] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _9024 + ceil32(return_data.size) + 265] = mem[idx + _9024 + 164]
                                _8811 = mem[mem[192]]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_9024 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9024 + 228] == bool(mem[_9024 + 228])
                            if not mem[_9024 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9024 + ceil32(return_data.size) + 201] = this.address
                        require ext_code.size(address(_8860))
                        staticcall address(_8860).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_9024 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _9024 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                    require return_data.size >= 32
                    if idx >= mem[mem[192]]:
                        revert with 0, 50
                    if ext_call.return_data[0] < _8952:
                        revert with 0, 17
                    if ext_call.return_data[0] - _8952 != mem[mem[(32 * idx) + mem[192] + 32] + 32]:
                        if ext_call.return_data[0] < _8952:
                            revert with 0, 17
                        if idx >= mem[mem[192]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[192] + 32] + 32] = ext_call.return_data[0] - _8952
                    if idx == -1:
                        revert with 0, 17
                    _8811 = mem[mem[192]]
                    idx = idx + 1
                    continue 
                _9873 = mem[mem[160]]
                idx = 0
                while idx < _9873:
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
                    _9873 = mem[mem[160]]
                    idx = idx + 1
                    continue 
                _10440 = mem[mem[192]]
                idx = 0
                while idx < _10440:
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
                    _10440 = mem[mem[192]]
                    idx = idx + 1
                    continue 
    if msg.value > fee:
        if msg.value < fee:
            revert with 0, 17
        stor6[cd[4]].field_1280 = msg.value - fee
        if stor4 > !(msg.value - fee):
            revert with 0, 17
        stor4 = stor4 + msg.value - fee
    emit 0xb9b53e5c: msg.sender, stor6[cd[4]].field_0, cd[4]
    stor1 = 1
}



}

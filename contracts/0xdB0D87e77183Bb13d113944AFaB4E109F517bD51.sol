contract main {




// =====================  Runtime code  =====================


address owner;
address stor2;
uint256 balanceWAVAX;

function owner() {
    return owner
}

function balanceWAVAX() {
    return balanceWAVAX
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdrawAVAX() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_81c4b370(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    call stor2.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ba37a5c1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function getBalanceOfToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_868e2925(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    call stor2.0xa22cb465 with:
         gas gas_remaining wei
        args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_089d372e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xbaf9a6f8a8afd4be0d85ca40f025bf364fa27324)
    call 0xbaf9a6f8a8afd4be0d85ca40f025bf364fa27324.deposit(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f3fae403(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xbaf9a6f8a8afd4be0d85ca40f025bf364fa27324)
    call 0xbaf9a6f8a8afd4be0d85ca40f025bf364fa27324.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cc560a1d(?) {
    require calldata.size - 4 >= 96
    require arg2 == bool(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg3))
    call address(arg3).0x591adce6 with:
         gas gas_remaining wei
        args arg1, bool(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_76eae003(?) {
    require calldata.size - 4 >= 96
    require arg2 == bool(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg3))
    call address(arg3).vote(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg1, bool(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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

function approveToken(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_6dd1f840(?) {
    require calldata.size - 4 >= 64
    require arg2 == uint64(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < uint64(arg2):
        mem[96] = 0xc679fa000000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        mem[132] = 0
        require ext_code.size(stor2)
        call stor2.0xc679fa0 with:
             gas gas_remaining wei
            args arg1, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_8eb3be28(?) {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == bool(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[228 len arg2.length] = arg2[all]
    mem[arg2.length + 228] = 0
    require ext_code.size(stor2)
    call stor2.0x8eb3be28 with:
         gas gas_remaining wei
        args 0, arg1, 96, bool(arg3), arg2.length, arg2[all], mem[arg2.length + 228 len ceil32(arg2.length) - arg2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6a387307(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(32 * ('cd', 4).length) + 97] = 0x7944135d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + 101] = 32
    require ext_code.size(address(cd[36]))
    call address(cd[36]).0x7944135d with:
         gas gas_remaining wei
        args Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_835fe184(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(32 * ('cd', 4).length) + 97] = 0x18c08f2600000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + 101] = 32
    require ext_code.size(address(cd[36]))
    call address(cd[36]).0x18c08f26 with:
         gas gas_remaining wei
        args Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9a96bf4c(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _18 = mem[(32 * idx) + 128]
        mem[ceil32(32 * ('cd', 4).length) + 97] = 0x4e71d92d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_18))
        call address(_18).claim() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_e3e0da3e(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _18 = mem[(32 * idx) + 128]
        mem[ceil32(32 * ('cd', 4).length) + 97] = 0xe8a77d1700000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 4).length) + 101] = _18
        require ext_code.size(stor2)
        call stor2.0xe8a77d17 with:
             gas gas_remaining wei
            args _18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_877b71dd(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _18 = mem[(32 * idx) + 128]
        mem[ceil32(32 * ('cd', 4).length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
        mem[ceil32(32 * ('cd', 4).length) + 133] = msg.sender
        mem[ceil32(32 * ('cd', 4).length) + 165] = _18
        require ext_code.size(stor2)
        call stor2.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), msg.sender, _18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ffe209c6(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _18 = mem[(32 * idx) + 128]
        mem[ceil32(32 * ('cd', 4).length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 4).length) + 101] = msg.sender
        mem[ceil32(32 * ('cd', 4).length) + 133] = this.address
        mem[ceil32(32 * ('cd', 4).length) + 165] = _18
        require ext_code.size(stor2)
        call stor2.0x42842e0e with:
             gas gas_remaining wei
            args msg.sender, address(this.address), _18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_e78276ba(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    mem[96] = 0xad914e2e00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xad914e2e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _5:
        require mem[s] == mem[s + 24 len 8]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[mem[64]] = mem[160]
    return memory
      from mem[64]
       len 32
}

function sub_7f3988a3(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == uint64(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == bool(cd[100])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        s = 0
        while s < uint64(cd[36]):
            if idx >= mem[96]:
                revert with 0, 50
            _22 = mem[(32 * idx) + 128]
            mem[ceil32(32 * ('cd', 4).length) + 97] = 0xc679fa000000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 4).length) + 101] = _22
            mem[ceil32(32 * ('cd', 4).length) + 133] = bool(cd[100])
            require ext_code.size(address(cd[68]))
            call address(cd[68]).0xc679fa0 with:
                 gas gas_remaining wei
                args _22, bool(cd[100])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_986a8b81(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == uint64(cd[36])
    require cd[68] == bool(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _52 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor2)
        staticcall stor2.0x6352211e with:
                gas gas_remaining wei
               args _52
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _56 = mem[_55]
        require mem[_55] == mem[_55 + 12 len 20]
        if idx >= mem[96]:
            revert with 0, 50
        _58 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x7f8661a100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _58
        require ext_code.size(address(_56))
        call address(_56).exit(uint256 arg1) with:
             gas gas_remaining wei
            args _58
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= mem[96]:
            revert with 0, 50
        _62 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0xad914e2e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _62
        require ext_code.size(address(_56))
        staticcall address(_56).0xad914e2e with:
                gas gas_remaining wei
               args _62
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _65 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _66 = mem[_65]
        require mem[_65] <= test266151307()
        require _65 + return_data.size > _65 + mem[_65] + 31
        _67 = mem[_65 + mem[_65]]
        if mem[_65 + mem[_65]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_65 + mem[_65]]) + 1 < 0 or _65 + ceil32(return_data.size) + ceil32(32 * mem[_65 + mem[_65]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _65 + ceil32(return_data.size) + ceil32(32 * mem[_65 + mem[_65]]) + 1
        mem[_65 + ceil32(return_data.size)] = _67
        require _66 + (32 * _67) + 32 <= return_data.size
        t = _65 + _66 + 32
        u = _65 + ceil32(return_data.size) + 32
        s = 0
        while s < _67:
            require mem[t] == mem[t + 24 len 8]
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if _65 + _66 + (32 * _67) + 32 == -1:
            revert with 0, 17
        t = _65 + _66 + (32 * _67) + 33
        continue 
}

function _fallback() payable {
    if calldata.size < 4:
        if not calldata.size:
            emit Received(msg.sender, msg.value);
    if unknown_0x8eb3be28(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x7f3988a3(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x089d372e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(0xbaf9a6f8a8afd4be0d85ca40f025bf364fa27324)
                call 0xbaf9a6f8a8afd4be0d85ca40f025bf364fa27324.deposit(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x150b7a02(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    require cd[100] <= test266151307()
                    require cd[100] + 35 < calldata.size
                    if ('cd', 100).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 100).length)) + 129 < 128 or ceil32(ceil32(('cd', 100).length)) + 129 > test266151307():
                        revert with 0, 65
                    require cd[100] + ('cd', 100).length + 36 <= calldata.size
                    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
                if uint32(call.func_hash) >> 224 != unknown_0x6a387307(?????):
                    if unknown_0x6dd1f840(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[36] == uint64(cd[36])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        idx = 0
                        while idx < uint64(cd[36]):
                            mem[128] = 0xc679fa000000000000000000000000000000000000000000000000000000000
                            mem[132] = cd[4]
                            mem[164] = 0
                            require ext_code.size(stor2)
                            call stor2.0xc679fa0 with:
                                 gas gas_remaining wei
                                args cd[4], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            owner = 0
                            emit OwnershipTransferred(owner, 0);
                        else:
                            if unknown_0x76eae003(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 96
                                require cd[36] == bool(cd[36])
                                require cd[68] == address(cd[68])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                require ext_code.size(address(cd[68]))
                                call address(cd[68]).vote(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args cd[4], bool(cd[36])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 4).length
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    idx = 0
                    s = cd[4] + 36
                    t = 160
                    while idx < ('cd', 4).length:
                        mem[t] = cd[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require cd[36] == address(cd[36])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[ceil32(32 * ('cd', 4).length) + 129] = 0x7944135d00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + 133] = 32
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0x7944135d with:
                         gas gas_remaining wei
                        args Array(len=('cd', 4).length, data=mem[160 len 32 * ('cd', 4).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0x83786f8c(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x83786f8c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0x868e2925(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(stor2)
                    call stor2.0xa22cb465 with:
                         gas gas_remaining wei
                        args address(cd[4]), 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x877b71dd(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x8da5cb5b(?????):
                        require not msg.value
                        return owner
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 4).length
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    idx = 0
                    s = cd[4] + 36
                    t = 160
                    while idx < ('cd', 4).length:
                        mem[t] = cd[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= mem[128]:
                            revert with 0, 50
                        _258 = mem[(32 * idx) + 160]
                        mem[ceil32(32 * ('cd', 4).length) + 129] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(32 * ('cd', 4).length) + 133] = this.address
                        mem[ceil32(32 * ('cd', 4).length) + 165] = msg.sender
                        mem[ceil32(32 * ('cd', 4).length) + 197] = _258
                        require ext_code.size(stor2)
                        call stor2.0x42842e0e with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _258
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                if unknown_0x7f3988a3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 4).length
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    idx = 0
                    s = cd[4] + 36
                    t = 160
                    while idx < ('cd', 4).length:
                        mem[t] = cd[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require cd[36] == uint64(cd[36])
                    require cd[68] == address(cd[68])
                    require cd[100] == bool(cd[100])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    idx = 0
                    while idx < ('cd', 4).length:
                        s = 0
                        while s < uint64(cd[36]):
                            if idx >= mem[128]:
                                revert with 0, 50
                            _298 = mem[(32 * idx) + 160]
                            mem[ceil32(32 * ('cd', 4).length) + 129] = 0xc679fa000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * ('cd', 4).length) + 133] = _298
                            mem[ceil32(32 * ('cd', 4).length) + 165] = bool(cd[100])
                            require ext_code.size(address(cd[68]))
                            call address(cd[68]).0xc679fa0 with:
                                 gas gas_remaining wei
                                args _298, bool(cd[100])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if unknown_0x81c4b370(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(stor2)
                        call stor2.0x42842e0e with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, cd[4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if unknown_0x835fe184(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] <= test266151307()
                            require cd[4] + 35 < calldata.size
                            if ('cd', 4).length > test266151307():
                                revert with 0, 65
                            if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                                revert with 0, 65
                            mem[128] = ('cd', 4).length
                            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                            idx = 0
                            s = cd[4] + 36
                            t = 160
                            while idx < ('cd', 4).length:
                                mem[t] = cd[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require cd[36] == address(cd[36])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            mem[ceil32(32 * ('cd', 4).length) + 129] = 0x18c08f2600000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * ('cd', 4).length) + 133] = 32
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0x18c08f26 with:
                                 gas gas_remaining wei
                                args Array(len=('cd', 4).length, data=mem[160 len 32 * ('cd', 4).length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
    if unknown_0xcc560a1d(?????) > uint32(call.func_hash) >> 224:
        if unknown_0xabce145b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xabce145b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0xb7f8aa00(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[36] == address(cd[36])
                    require cd[68] == address(cd[68])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if unknown_0xba37a5c1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, cd[4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if unknown_0xbe4b1772(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[36] == address(cd[36])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if unknown_0x8eb3be28(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                require ('cd', 36).length <= test266151307()
                require cd[36] + ('cd', 36).length + 36 <= calldata.size
                require cd[68] == bool(cd[68])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(stor2)
                call stor2.0x8eb3be28 with:
                     gas gas_remaining wei
                    args cd[4], Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length]), bool(cd[68])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x986a8b81(?????):
                    if unknown_0x9a96bf4c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] <= test266151307()
                        require calldata.size > cd[4] + 35
                        if ('cd', 4).length > test266151307():
                            revert with 0, 65
                        if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                            revert with 0, 65
                        mem[128] = ('cd', 4).length
                        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                        s = cd[4] + 36
                        t = 160
                        idx = 0
                        while idx < ('cd', 4).length:
                            require cd[s] == address(cd[s])
                            mem[t] = cd[s]
                            s = s + 32
                            t = t + 32
                            idx = idx + 1
                            continue 
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= mem[128]:
                                revert with 0, 50
                            _262 = mem[(32 * idx) + 160]
                            mem[ceil32(32 * ('cd', 4).length) + 129] = 0x4e71d92d00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_262))
                            call address(_262).claim() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * ('cd', 4).length) + 129
                    mem[128] = ('cd', 4).length
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    idx = 0
                    s = cd[4] + 36
                    t = 160
                    while idx < ('cd', 4).length:
                        mem[t] = cd[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require cd[36] == uint64(cd[36])
                    require cd[68] == bool(cd[68])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= mem[128]:
                            revert with 0, 50
                        _260 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + 160]
                        require ext_code.size(stor2)
                        staticcall stor2.0x6352211e with:
                                gas gas_remaining wei
                               args _260
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _277 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _278 = mem[_277]
                        require mem[_277] == mem[_277 + 12 len 20]
                        if idx >= mem[128]:
                            revert with 0, 50
                        _280 = mem[(32 * idx) + 160]
                        mem[mem[64]] = 0x7f8661a100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _280
                        require ext_code.size(address(_278))
                        call address(_278).exit(uint256 arg1) with:
                             gas gas_remaining wei
                            args _280
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[128]:
                            revert with 0, 50
                        _284 = mem[(32 * idx) + 160]
                        mem[mem[64]] = 0xad914e2e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _284
                        require ext_code.size(address(_278))
                        staticcall address(_278).0xad914e2e with:
                                gas gas_remaining wei
                               args _284
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _287 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _288 = mem[_287]
                        require mem[_287] <= test266151307()
                        require _287 + return_data.size > _287 + mem[_287] + 31
                        _289 = mem[_287 + mem[_287]]
                        if mem[_287 + mem[_287]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_287 + mem[_287]]) + 1 < 0 or _287 + ceil32(return_data.size) + ceil32(32 * mem[_287 + mem[_287]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _287 + ceil32(return_data.size) + ceil32(32 * mem[_287 + mem[_287]]) + 1
                        mem[_287 + ceil32(return_data.size)] = _289
                        require _288 + (32 * _289) + 32 <= return_data.size
                        t = _287 + _288 + 32
                        u = _287 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _289:
                            require mem[t] == mem[t + 24 len 8]
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        if _287 + _288 + (32 * _289) + 32 == -1:
                            revert with 0, 17
                        t = _287 + _288 + (32 * _289) + 33
                        continue 
    if unknown_0xe78276ba(?????) > uint32(call.func_hash) >> 224:
        if unknown_0xcc560a1d(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 96
            require cd[36] == bool(cd[36])
            require cd[68] == address(cd[68])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            require ext_code.size(address(cd[68]))
            call address(cd[68]).0x591adce6 with:
                 gas gas_remaining wei
                args cd[4], bool(cd[36])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if uint32(call.func_hash) >> 224 != unknown_0xe3e0da3e(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xe5c9ceb3(?????):
                require not msg.value
                return balanceWAVAX
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] <= test266151307()
            require cd[4] + 35 < calldata.size
            if ('cd', 4).length > test266151307():
                revert with 0, 65
            if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                revert with 0, 65
            mem[128] = ('cd', 4).length
            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
            idx = 0
            s = cd[4] + 36
            t = 160
            while idx < ('cd', 4).length:
                mem[t] = cd[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[128]:
                    revert with 0, 50
                _265 = mem[(32 * idx) + 160]
                mem[ceil32(32 * ('cd', 4).length) + 129] = 0xe8a77d1700000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * ('cd', 4).length) + 133] = _265
                require ext_code.size(stor2)
                call stor2.0xe8a77d17 with:
                     gas gas_remaining wei
                    args _265
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    if uint32(call.func_hash) >> 224 != unknown_0xe78276ba(?????):
        if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if not address(cd[4]):
                revert with 0, 'Ownable: new owner is the zero address'
            owner = address(cd[4])
            emit OwnershipTransferred(owner, address(cd[4]));
        else:
            if unknown_0xf3fae403(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(0xbaf9a6f8a8afd4be0d85ca40f025bf364fa27324)
                call 0xbaf9a6f8a8afd4be0d85ca40f025bf364fa27324.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0xffe209c6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 4).length
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    idx = 0
                    s = cd[4] + 36
                    t = 160
                    while idx < ('cd', 4).length:
                        mem[t] = cd[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= mem[128]:
                            revert with 0, 50
                        _267 = mem[(32 * idx) + 160]
                        mem[ceil32(32 * ('cd', 4).length) + 129] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(32 * ('cd', 4).length) + 133] = msg.sender
                        mem[ceil32(32 * ('cd', 4).length) + 165] = this.address
                        mem[ceil32(32 * ('cd', 4).length) + 197] = _267
                        require ext_code.size(stor2)
                        call stor2.0x42842e0e with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _267
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[36] == address(cd[36])
    mem[128] = 0xad914e2e00000000000000000000000000000000000000000000000000000000
    mem[132] = cd[4]
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0xad914e2e with:
            gas gas_remaining wei
           args cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 128
    require return_data.size >= 96
    _55 = mem[128 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require return_data.size + 128 > mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 159
    _74 = mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
    if mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 129 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 129
    mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
    require _55 + (32 * _74) + 32 <= return_data.size
    s = _55 + 160
    t = ceil32(return_data.size) + 160
    idx = 0
    while idx < _74:
        require mem[s] == mem[s + 24 len 8]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[mem[64]] = mem[192]
    return memory
      from mem[64]
       len 32
}



}

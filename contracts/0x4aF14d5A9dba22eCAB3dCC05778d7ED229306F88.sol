contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint8 productID; offset 160
address sub_dc3aaab5Address;

function getTokenAddress() {
    return tokenAddress
}

function owner() {
    return owner
}

function sub_dc3aaab5(?) {
    return sub_dc3aaab5Address
}

function productID() {
    return productID
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

function withdrawETH() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function sub_9e9f695d(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    productID = uint8(arg1)
}

function sub_4bc10ccb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = address(arg1)
}

function sub_7c0bf7bb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dc3aaab5Address = address(arg1)
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

function withdrawTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        if arg2 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'make sure there is a balance available to withdraw'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg2
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'make sure there is a balance available to withdraw'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function bulkSendMainTokens(address arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (64 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size - s >= 64
        _15 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_15] = cd[s]
        mem[_15 + 32] = cd[(s + 32)]
        mem[t] = _15
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    if msg.value < 0:
        revert with 0, 17
    mem[mem[64]] = 0xd9e30e5500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = productID
    require ext_code.size(sub_dc3aaab5Address)
    call sub_dc3aaab5Address.0xd9e30e55 with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender, productID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _28 = mem[96]
    idx = 0
    s = 1
    while idx < _28:
        if idx >= mem[96]:
            revert with 0, 50
        call mem[mem[(32 * idx) + 128] + 12 len 20] with:
           value mem[mem[(32 * idx) + 128] + 32] wei
             gas gas_remaining wei
        if return_data.size:
            _37 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_37] = return_data.size
            mem[_37 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        _28 = mem[96]
        if not s:
            idx = idx + 1
            s = 0
            continue 
        idx = idx + 1
        s = ext_call.success
        continue 
    return bool(s)
}

function sub_1ac88d34(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require calldata.size - s >= 64
        _14 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_14] = cd[s]
        mem[_14 + 32] = cd[(s + 32)]
        mem[t] = _14
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    if msg.value < 0:
        revert with 0, 17
    mem[mem[64]] = 0xd9e30e5500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = productID
    require ext_code.size(sub_dc3aaab5Address)
    call sub_dc3aaab5Address.0xd9e30e55 with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender, productID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _26 = mem[96]
    idx = 0
    while idx < _26:
        if idx >= mem[96]:
            revert with 0, 50
        _30 = mem[mem[(32 * idx) + 128]]
        _31 = mem[mem[(32 * idx) + 128] + 32]
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(_30)
        mem[mem[64] + 68] = _31
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_30), _31
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        _26 = mem[96]
        idx = idx + 1
        continue 
    return 1
}

function sub_47e3bedb(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require calldata.size - s >= 64
        _16 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_16] = cd[s]
        mem[_16 + 32] = cd[(s + 32)]
        mem[t] = _16
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    if msg.value < 0:
        revert with 0, 17
    mem[mem[64]] = 0xd9e30e5500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = productID
    require ext_code.size(sub_dc3aaab5Address)
    call sub_dc3aaab5Address.0xd9e30e55 with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender, productID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _30 = mem[96]
    idx = 0
    while idx < _30:
        if idx >= mem[96]:
            revert with 0, 50
        _34 = mem[mem[(32 * idx) + 128]]
        _35 = mem[mem[(32 * idx) + 128] + 32]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(_34)
        mem[mem[64] + 68] = _35
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_34), _35
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _39 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_39] == bool(mem[_39])
        if idx == -1:
            revert with 0, 17
        _30 = mem[96]
        idx = idx + 1
        continue 
    return 1
}



}

contract main {




// =====================  Runtime code  =====================


address owner;
address usdcAddress;
address milkAddress;
address pairAddress;
uint256 sub_de42b260;
array of address children;
address sub_cc57b4dbAddress;

function usdc() payable {
    return usdcAddress
}

function children(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < children.length
    return children[arg1]
}

function owner() payable {
    return owner
}

function pair() payable {
    return pairAddress
}

function sub_cc57b4db(?) payable {
    return sub_cc57b4dbAddress
}

function milk() payable {
    return milkAddress
}

function sub_de42b260(?) payable {
    return sub_de42b260
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_5301f8fc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_de42b260 = arg1
}

function setPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pairAddress = arg1
}

function setUsdc(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    usdcAddress = arg1
}

function sub_110a2ded(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    milkAddress = address(arg1)
}

function sub_15a72da0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_cc57b4dbAddress = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_5d5c904f(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    create contract with 0 wei
                    code: code.data[10048 len 4621], usdcAddress, milkAddress, sub_cc57b4dbAddress
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    children.length++
    children[children.length] = address(create.new_address)
}

function call(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    if not ext_call.success:
        revert with 0, 'transaction failed'
}

function sub_fee84d4e(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(usdcAddress)
    staticcall usdcAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(usdcAddress)
    call usdcAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1c3c5a13(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[96 len 4621] = code.data[10048 len 4621]
        mem[4717] = usdcAddress
        mem[4749] = milkAddress
        mem[4781] = sub_cc57b4dbAddress
        create contract with 0 wei
                        code: code.data[10048 len 4621], usdcAddress, milkAddress, sub_cc57b4dbAddress
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        children.length++
        mem[0] = 5
        children[children.length] = address(create.new_address)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function trigger() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(pairAddress)
    call pairAddress.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(milkAddress)
    staticcall milkAddress.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    require ext_code.size(usdcAddress)
    staticcall usdcAddress.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(pairAddress)
    call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, 2 * ext_call.return_data[0], address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claim() payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < sub_de42b260:
        if idx >= children.length:
            revert with 'NH{q', 50
        mem[0] = 5
        require ext_code.size(children[idx])
        call children[idx].0x4e71d92d with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_22] == bool(mem[_22])
        if not mem[_22]:
            revert with 0, 'claim failed'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(milkAddress)
    staticcall milkAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _25 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _27 = mem[_25]
    require mem[_25] == mem[_25]
    mem[mem[64] + 4] = owner
    mem[mem[64] + 36] = _27
    require ext_code.size(milkAddress)
    call milkAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, _27
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _31 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_31] == bool(mem[_31])
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if pairAddress != msg.sender:
        revert with 0, 'Sender is not pair'
    require ext_code.size(sub_cc57b4dbAddress)
    staticcall sub_cc57b4dbAddress.0x2f85d8cb with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 100 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not 100 * ext_call.return_data[0]:
        revert with 0, 'price cannot be zero'
    idx = 0
    while idx < sub_de42b260:
        if idx >= children.length:
            revert with 'NH{q', 50
        mem[0] = 5
        mem[mem[64] + 4] = children[idx]
        mem[mem[64] + 36] = 100 * ext_call.return_data[0]
        require ext_code.size(usdcAddress)
        call usdcAddress.0xa9059cbb with:
             gas gas_remaining wei
            args children[idx], 100 * ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _28 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_28] == bool(mem[_28])
        if idx >= children.length:
            revert with 'NH{q', 50
        mem[0] = 5
        require ext_code.size(children[idx])
        call children[idx].buy() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _34 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_34] == bool(mem[_34])
        if not mem[_34]:
            revert with 0, 'buy failed'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if arg3 and 3 > -1 / arg3:
        revert with 'NH{q', 17
    if 3 * arg3 / 997 > -1001:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = pairAddress
    mem[mem[64] + 36] = (3 * arg3 / 997) + 1000
    require ext_code.size(usdcAddress)
    call usdcAddress.0xa9059cbb with:
         gas gas_remaining wei
        args pairAddress, (3 * arg3 / 997) + 1000
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _37 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_37] == bool(mem[_37])
}



}

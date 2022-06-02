contract main {




// =====================  Runtime code  =====================


uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
address implementationAddress;
address sub_719414b4Address;

function implementation() {
    return implementationAddress
}

function sub_719414b4(?) {
    return sub_719414b4Address
}

function getOwner() {
    return owner
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function sub_bb30a974(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    implementationAddress = address(arg1)
    Mask(96, 0, stor1.field_160) = Mask(96, 0, bool(arg2))
}

function sub_f4e4d998(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    call address(arg1) with:
         gas gas_remaining wei
        args arg2[all]
}

function _fallback() payable {
    if not implementationAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'implementation must not 0  address'
    if not uint8(stor1.field_160):
        call implementationAddress with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        delegate implementationAddress with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function sub_0f3f9199(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if arg1 == 1:
        revert with 0, 'enter'
    idx = 0
    s = 0
    while idx < arg3:
        mem[mem[64] + 4] = tx.origin
        mem[mem[64] + 36] = 1
        require ext_code.size(sub_719414b4Address)
        call sub_719414b4Address.0x40c10f19 with:
           value arg2 wei
             gas gas_remaining wei
            args tx.origin, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_719414b4Address)
        staticcall sub_719414b4Address.tokensMinted() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _20 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_20] == mem[_20]
        if idx == -1:
            revert with 'NH{q', 17
        if mem[_20] != arg4:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        revert with 0, 'id not matched'
    _13 = mem[64]
    mem[64] = mem[64] + 64
    mem[_13] = 1
    mem[_13 + 32] = '0'
    _14 = mem[64]
    mem[mem[64] + 32] = 'tag exist! minted:'
    mem[mem[64] + 50] = '0'
    mem[mem[64] + 51] = 0
    _38 = mem[64]
    mem[64] = mem[64] + 51
    if arg1 != 2:
    mem[_14 + 51] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_14 + 55] = 32
    _41 = mem[_38]
    mem[_14 + 87] = mem[_38]
    mem[_14 + 119 len ceil32(_41)] = mem[_38 + 32 len ceil32(_41)]
    if ceil32(_41) > _41:
        mem[_14 + _41 + 119] = 0
    revert with 0, 32, mem[_14 + 87 len ceil32(_41) + 32]
}



}

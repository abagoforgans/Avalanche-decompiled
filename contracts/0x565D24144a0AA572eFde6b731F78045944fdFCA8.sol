contract main {




// =====================  Runtime code  =====================


#
#  - sub_eb0bcdd9(?)
#
mapping of uint8 stor0;

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[address(msg.sender)]:
        revert with 0, 'Sender is not admin.'
    stor0[address(arg1)] = uint8(arg2)
}

function withdrawAvax(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0[address(msg.sender)]:
        revert with 0, 'Sender is not admin.'
    if not arg1:
        revert with 0, 'Zero Addr'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_85f8af7f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not stor0[address(msg.sender)]:
        revert with 0, 'Sender is not admin.'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 0
        stor0[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[((32 * idx) + cd[36] + 36)]))
        idx = idx + 1
        continue 
}

function withdrawToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor0[address(msg.sender)]:
        revert with 0, 'Sender is not admin.'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'InsufficientBalance'
    mem[260 len 64] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'Safe transfer failed'
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'Safe transfer failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[292]:
            revert with 0, 'Safe transfer failed'
}

function sub_8e37e70b(?) payable {
    require calldata.size - 4 >= 64
    if not stor0[address(msg.sender)]:
        revert with 0, 'Sender is not admin.'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor0[address(msg.sender)]:
        revert with 0, 'Sender is not admin.'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'InsufficientBalance'
    mem[260 len 64] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg2) << 64, 0, ext_call.return_data[0 len 28]
    call arg1 with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'Safe transfer failed'
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'Safe transfer failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[292]:
            revert with 0, 'Safe transfer failed'
}



}

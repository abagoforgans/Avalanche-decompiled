contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_87ab8935(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'array length not eq'
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        mem[100] = msg.sender
        mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[164] = uint128(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), uint128(cd[((32 * idx) + cd[68] + 36)])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}

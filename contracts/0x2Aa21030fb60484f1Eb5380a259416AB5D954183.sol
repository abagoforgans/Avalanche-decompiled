contract main {




// =====================  Runtime code  =====================


#
#  - sub_a20e5faf(?)
#
function _fallback() payable {
    revert
}

function getTokenIndex(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint16(arg1)
}

function sub_9701eaa8(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] == address(cd[36])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if ('cd', 100).length != 3:
        revert with 0, 'AUSDAdaptor: PL'
    require ('cd', 100).length
    require ('cd', 100)[0] == address(('cd', 100)[0])
    require 2 < ('cd', 100).length
    require ('cd', 100)[2] == address(('cd', 100)[2])
    require 1 < ('cd', 100).length
    require ('cd', 100)[1] == address(('cd', 100)[1])
    require ext_code.size(address(('cd', 100)[2]))
    staticcall address(('cd', 100)[2]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require 10^ext_call.return_data[31 len 1]
    return (cd[4] * uint64(('cd', 100)[1]) / 10^ext_call.return_data[31 len 1] * 10^uint8(ext_call.return_data[0]) / 100 * 10^6)
}



}

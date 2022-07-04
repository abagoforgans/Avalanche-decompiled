contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_84da580f(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
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
    if ('cd', 36).length != ('cd', 4).length:
        revert with 'NH{q', 1
    if ('cd', 68).length != ('cd', 4).length:
        revert with 'NH{q', 1
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64]] = 0xd881e95900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[mem[64] + 100 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        mem[mem[64] + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 100] = 0
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).0xd881e959 with:
             gas gas_remaining wei
            args Array(len=cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)], data=call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]), address(cd[((32 * idx) + cd[68] + 36)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}

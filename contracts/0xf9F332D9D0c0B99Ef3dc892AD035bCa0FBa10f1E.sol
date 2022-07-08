contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_fe72ab64(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        call address(cd[((64 * idx) + cd[4] + 36)]) with:
           value cd[((64 * idx) + cd[4] + 68)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}

contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_0c410de7(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 0
    idx = 0
    while idx < ('cd', 4).length:
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 99
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] == uint16(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)])
        if s > !uint16(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]):
            revert with 0, 17
        if cd[36] < s + uint16(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]):
            return idx
        if not idx + 1:
            revert with 0, 17
        s = s + uint16(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)])
        idx = idx + 1
        continue 
    return ('cd', 4).length
}



}

contract main {




// =====================  Runtime code  =====================


const REVISION = 203


function _fallback() payable {
    revert
}

function getStorageAt(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require 32 * arg2 <= test266151307()
    if Mask(251, 0, arg2):
        mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
    idx = 0
    while idx < arg2:
        mem[(32 * idx) + 128] = stor[idx + arg1]
        idx = idx + 1
        continue 
    mem[floor32(arg2) + 192 len floor32(arg2)] = mem[128 len floor32(arg2)]
    return Array(len=32 * arg2, data=mem[128 len floor32(arg2)], mem[(2 * floor32(arg2)) + 192 len (32 * arg2) - floor32(arg2)])
}



}

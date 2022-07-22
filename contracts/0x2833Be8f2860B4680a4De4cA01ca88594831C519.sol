contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_23a0fd7d(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 128
    while idx < (32 * ('cd', 4).length) + 128:
        call mem[idx] with:
           value msg.value / ('cd', 4).length wei
             gas 21000 wei
        idx = idx + 32
        continue 
    if not eth.balance(this.address):
        return 0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 21000 wei
}



}

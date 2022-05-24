contract main {




// =====================  Runtime code  =====================


address stor0;
array of address slaveList;
mapping of uint8 stor2;
address whitelisterAddress;

function whitelister() payable {
    return whitelisterAddress
}

function slaveList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < slaveList.length
    return slaveList[arg1]
}

function sub_c2a8a3cc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function withdrawEther(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_31ddcd80(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < arg1:
        mem[96 len 2197] = code.data[2816 len 2197]
        mem[2293] = stor0
        mem[2325] = whitelisterAddress
        create contract with 0 wei
                        code: code.data[2816 len 2197], stor0, whitelisterAddress
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        slaveList.length++
        slaveList[slaveList.length] = address(create.new_address)
        mem[0] = address(create.new_address)
        mem[32] = 2
        stor2[address(create.new_address)] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_24e1f7f6(?) payable {
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
    require msg.sender == stor0
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        slaveList.length++
        slaveList[slaveList.length] = mem[(32 * idx) + 140 len 20]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}

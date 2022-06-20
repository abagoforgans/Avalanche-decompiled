contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_5e91643b(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] == bool(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 132).length) + 97 > test266151307() or floor32(('cd', 132).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = 128
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 132).length < 1:
        revert with 'NH{q', 17
    if ('cd', 132).length - 1 >= ('cd', 132).length:
        revert with 'NH{q', 50
    _23 = mem[(32 * ('cd', 132).length - 1) + 128]
    mem[floor32(('cd', 132).length) + 97 len 3237] = code.data[2038 len 3237]
    create contract with 0 wei
                    code: code.data[2038 len 3237]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 132).length) + 97] = 0x89f9766900000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 132).length) + 101] = cd[4]
    mem[floor32(('cd', 132).length) + 133] = cd[36]
    mem[floor32(('cd', 132).length) + 165] = bool(cd[68])
    mem[floor32(('cd', 132).length) + 197] = address(cd[100])
    mem[floor32(('cd', 132).length) + 229] = 160
    mem[floor32(('cd', 132).length) + 261] = ('cd', 132).length
    idx = 0
    s = 128
    t = floor32(('cd', 132).length) + 293
    while idx < ('cd', 132).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x89f97669 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args cd[4], cd[36], bool(cd[68]), address(cd[100]), Array(len=('cd', 132).length, data=mem[floor32(('cd', 132).length) + 293 len 32 * ('cd', 132).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(_23))
    staticcall address(_23).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(_23))
    call address(_23).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

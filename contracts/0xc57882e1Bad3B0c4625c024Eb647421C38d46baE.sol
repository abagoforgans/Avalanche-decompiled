contract main {




// =====================  Runtime code  =====================


address managerAddress;
array of struct sub_3a5fccee;

function sub_3a5fccee(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_3a5fccee.length
    return sub_3a5fccee[arg1].field_0
}

function getManager() payable {
    return managerAddress
}

function _fallback() payable {
    revert
}

function sub_b67a88f9(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == managerAddress
    create contract with 0 wei
                    code: code.data[963 len 2073], address(msg.sender), arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_3a5fccee.length++
    sub_3a5fccee[sub_3a5fccee.length].field_0 = address(create.new_address)
}

function sub_86a2b594(?) payable {
    if not sub_3a5fccee.length:
        mem[(32 * sub_3a5fccee.length) + 128] = 32
        mem[(32 * sub_3a5fccee.length) + 160] = sub_3a5fccee.length
        mem[(32 * sub_3a5fccee.length) + 192 len floor32(sub_3a5fccee.length)] = mem[128 len floor32(sub_3a5fccee.length)]
        return memory
          from (32 * sub_3a5fccee.length) + 128
           len (96 * sub_3a5fccee.length) + 64
    mem[128] = address(sub_3a5fccee.field_0)
    idx = 128
    s = 0
    while (32 * sub_3a5fccee.length) + 96 > idx:
        mem[idx + 32] = sub_3a5fccee[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_3a5fccee.length) + 192 len floor32(sub_3a5fccee.length)] = mem[128 len floor32(sub_3a5fccee.length)]
    return Array(len=sub_3a5fccee.length, data=mem[128 len floor32(sub_3a5fccee.length)], mem[(32 * sub_3a5fccee.length) + floor32(sub_3a5fccee.length) + 192 len (32 * sub_3a5fccee.length) - floor32(sub_3a5fccee.length)]), 
}



}

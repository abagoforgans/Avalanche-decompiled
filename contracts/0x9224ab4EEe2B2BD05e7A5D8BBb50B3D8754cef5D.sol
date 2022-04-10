contract main {




// =====================  Runtime code  =====================


array of address sub_e87796b8;

function sub_e87796b8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e87796b8.length
    return sub_e87796b8[arg1]
}

function harvest() payable {
  stop
}

function _fallback() payable {
    revert
}

function add(address arg1) payable {
    require calldata.size - 4 >= 32
    sub_e87796b8.length++
    sub_e87796b8[sub_e87796b8.length] = arg1
}

function sub_063215ba(?) payable {
    idx = 0
    while idx < sub_e87796b8.length:
        mem[0] = 0
        mem[96] = 0x4641257d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_e87796b8[idx])
        call sub_e87796b8[idx].0x4641257d with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}

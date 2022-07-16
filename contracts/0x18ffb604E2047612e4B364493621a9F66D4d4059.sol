contract main {




// =====================  Runtime code  =====================


address sub_a2e48674Address;
mapping of struct users;

function sub_a2e48674(?) payable {
    return sub_a2e48674Address
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[arg1].field_0, 
           users[arg1].field_256,
           users[arg1].field_512,
           users[arg1].field_768,
           users[arg1].field_1024,
           users[arg1].field_1280,
           users[arg1].field_1536,
           users[arg1].field_1792,
           users[arg1].field_2048,
           users[arg1].field_2304,
           users[arg1].field_2560
}

function _fallback() payable {
    revert
}

function sub_0c4aa1a5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    sub_a2e48674Address = address(arg1)
}

function sub_a2522b4d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall sub_a2e48674Address.0xa87430ba with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    if not bool(ceil32(return_data.size) + 448 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    users[address(arg1)].field_0 = ext_call.return_data[12 len 20]
    users[address(arg1)].field_256 = ext_call.return_data[32]
    users[address(arg1)].field_512 = ext_call.return_data[64]
    users[address(arg1)].field_768 = ext_call.return_data[96]
    users[address(arg1)].field_1024 = ext_call.return_data[128]
    users[address(arg1)].field_1280 = ext_call.return_data[160]
    users[address(arg1)].field_1536 = ext_call.return_data[192]
    users[address(arg1)].field_1792 = ext_call.return_data[224]
    users[address(arg1)].field_2048 = ext_call.return_data[256]
    users[address(arg1)].field_2304 = ext_call.return_data[288]
    users[address(arg1)].field_2560 = ext_call.return_data[332 len 20]
}



}

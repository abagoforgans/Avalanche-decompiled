contract main {




// =====================  Runtime code  =====================


address adminAddress;
address sub_135fb504Address;
mapping of uint8 stor2;
mapping of address sub_24be4a50;
mapping of address sub_9c0ad5ed;
array of address allSales;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function sub_135fb504(?) payable {
    return sub_135fb504Address
}

function sub_209a9f41(?) payable {
    return allSales.length
}

function sub_24be4a50(?) payable {
    require calldata.size - 4 >= 32
    return address(sub_24be4a50[arg1])
}

function allSales(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allSales.length
    return allSales[arg1]
}

function sub_9c0ad5ed(?) payable {
    require calldata.size - 4 >= 32
    return address(sub_9c0ad5ed[arg1])
}

function sub_a00249e8(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_b033342b(?) payable {
    if not allSales.length:
        return 0
    require allSales.length - 1 < allSales.length
    return allSales[allSales.length]
}

function sub_9af2c481(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(adminAddress)
    staticcall adminAddress.isAdmin(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Only Admin can deploy sales'
    require arg1
    sub_135fb504Address = arg1
}

function sub_4c0ec736(?) payable {
    require calldata.size - 4 >= 64
    if bool(stor2[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 44, code.data[19265 len 44], mem[208 len 20]
    if address(sub_24be4a50[address(arg1)]):
        revert with 0, 'Sale owner already set.'
    if address(sub_9c0ad5ed[address(arg2)]):
        revert with 0, 'Sale token already set.'
    uint256(sub_24be4a50[address(arg1)]) = msg.sender or Mask(96, 160, uint256(sub_24be4a50[address(arg1)]))
    uint256(sub_9c0ad5ed[address(arg2)]) = msg.sender or Mask(96, 160, uint256(sub_9c0ad5ed[address(arg2)]))
    emit 0xe751350b: msg.sender, address(arg1), arg2
}

function sub_9e75cf45(?) payable {
    require calldata.size - 4 >= 64
    if arg2 <= arg1:
        revert with 0, 'Bad input'
    require arg2 - arg1 <= test266151307()
    mem[96] = arg2 - arg1
    if arg2 - arg1:
        mem[128 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
    idx = arg1
    s = 0
    while idx < arg2:
        require idx < allSales.length
        mem[0] = 5
        require s < mem[96]
        mem[(32 * s) + 128] = allSales[idx]
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * arg2 - arg1) + 128] = 32
    mem[(32 * arg2 - arg1) + 160] = mem[96]
    mem[(32 * arg2 - arg1) + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[(32 * arg2 - arg1) + 160 len (32 * mem[96]) + 32]
}

function sub_c050f3d4(?) payable {
    require ext_code.size(adminAddress)
    staticcall adminAddress.isAdmin(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Only Admin can deploy sales'
    create contract with 0 wei
                    code: code.data[2250 len 17015], adminAddress, sub_135fb504Address
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor2[address(create.new_address)] = 1
    allSales.length++
    stor36B6[stor5.length] = address(create.new_address)
    emit 0x65c0ac3f: address(create.new_address)
}



}

contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of struct sub_25b9cfca;
array of uint256 sub_2efecf72;
mapping of struct stor3;
mapping of uint256 stor4;

function sub_25b9cfca(?) payable {
    require calldata.size - 4 >= 32
    return sub_25b9cfca[address(arg1)].field_256
}

function sub_2efecf72(?) payable {
    return sub_2efecf72[address(arg1)][arg2][0 len sub_2efecf72[address(arg1)][arg2].length]
}

function sub_ebd782de(?) payable {
    require calldata.size - 4 >= 32
    return sub_2efecf72[address(arg1)]
}

function kill() payable {
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sub_c5ab6076(?) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    stor3[stor0].field_0 = arg1
}

function sub_ac21b9a3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if sub_25b9cfca[msg.sender].field_0 != msg.sender:
        revert with 0, 
                    32,
                    41,
                    0x6f457374612077616c6c6574206e6f20707565646520616772656761722073656775696d69656e746f,
                    mem[ceil32(arg1.length) + 237 len 23]
    sub_2efecf72[msg.sender]++
    sub_2efecf72[msg.sender][sub_2efecf72[msg.sender]][] = Array(len=arg1.length, data=arg1[all])
}

function sub_e45e01c9(?) payable {
    require calldata.size - 4 >= 64
    if stor3[stor0].field_256 != msg.sender:
        revert with 0, 'Caller is not manager'
    if bool(sub_25b9cfca[address(arg1)].field_160) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x6f457374652061646472657373206e6f20736520656e6375656e74726120726567697374726164,
                    mem[203 len 25]
    sub_25b9cfca[address(arg1)].field_256 += arg2
    require ext_code.size(stor3[stor0].field_0)
    staticcall stor3[stor0].field_0.0x17285a3e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3[stor0].field_0)
    call stor3[stor0].field_0.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_2cfa7677(?) payable {
    require calldata.size - 4 >= 64
    if stor3[stor0].field_256 != msg.sender:
        revert with 0, 'Caller is not manager'
    if sub_25b9cfca[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0xfe45737465206164647265737320796120736520656e6375656e74726120726567697374726164,
                    mem[203 len 25]
    sub_25b9cfca[address(arg1)].field_256 = arg2
    sub_25b9cfca[address(arg1)].field_0 = arg1
    sub_25b9cfca[address(arg1)].field_160 = 1
    require ext_code.size(stor3[stor0].field_0)
    staticcall stor3[stor0].field_0.0x17285a3e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3[stor0].field_0)
    call stor3[stor0].field_0.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_1a42928b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not sub_25b9cfca[msg.sender].field_256:
        revert with 0, 'No tienes firmas disponibles'
    sub_2efecf72[msg.sender]++
    sub_2efecf72[msg.sender][sub_2efecf72[msg.sender]][] = Array(len=arg1.length, data=arg1[all])
    sub_25b9cfca[msg.sender].field_256--
    stor4[msg.sender]++
    if 10 <= stor4[msg.sender] + 1:
        require ext_code.size(stor3[stor0].field_0)
        staticcall stor3[stor0].field_0.0x17285a3e with:
                gas gas_remaining wei
               args stor4[msg.sender]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3[stor0].field_0)
        call stor3[stor0].field_0.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, stor0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor4[msg.sender] = 0
    else:
        if not sub_25b9cfca[msg.sender].field_256:
            require ext_code.size(stor3[stor0].field_0)
            staticcall stor3[stor0].field_0.0x17285a3e with:
                    gas gas_remaining wei
                   args stor4[msg.sender]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor3[stor0].field_0)
            call stor3[stor0].field_0.transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, stor0, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor4[msg.sender] = 0
}

function sub_f5f13432(?) payable {
    require calldata.size - 4 >= 64
    if stor3[stor0].field_256 != msg.sender:
        revert with 0, 'Caller is not manager'
    if bool(sub_25b9cfca[address(arg1)].field_160) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x6f457374652061646472657373206e6f20736520656e6375656e74726120726567697374726164,
                    mem[203 len 25]
    require ext_code.size(stor3[stor0].field_0)
    if arg2 >= sub_25b9cfca[address(arg1)].field_256:
        staticcall stor3[stor0].field_0.0x17285a3e with:
                gas gas_remaining wei
               args sub_25b9cfca[address(arg1)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3[stor0].field_0)
        call stor3[stor0].field_0.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(arg1), msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_25b9cfca[address(arg1)].field_256 = 0
    else:
        staticcall stor3[stor0].field_0.0x17285a3e with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3[stor0].field_0)
        call stor3[stor0].field_0.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(arg1), msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_25b9cfca[address(arg1)].field_256 -= arg2
    if stor4[address(arg1)]:
        require ext_code.size(stor3[stor0].field_0)
        staticcall stor3[stor0].field_0.0x17285a3e with:
                gas gas_remaining wei
               args stor4[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3[stor0].field_0)
        call stor3[stor0].field_0.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(arg1), stor0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor4[address(arg1)] = 0
}



}

contract main {




// =====================  Runtime code  =====================


const sub_0add3525(?) = 0xbbf060a065c918022006699da8e300b0ca152706

const sub_2807d504(?) = 0x561c56b6ea927c157a9f51fcccfa50b777c1ea7c

const sub_5952b19e(?) = 0x6a019fac4954af6019836d3769920122fbf3b3be

const sub_747ce722(?) = 0xa82422a5fd4f9cb85cd4aac393cd3296a27dd873


address policyAddress;

function policy() payable {
    return policyAddress
}

function _fallback() payable {
    revert
}

function transferManagment(address arg1) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    policyAddress = arg1
}

function createBond(address arg1, address arg2, address arg3, address arg4, uint256[] arg5, uint256[] arg6) payable {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    if policyAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96 len 9357] = code.data[2550 len 9357]
    mem[9453] = arg3
    mem[9485] = arg1
    mem[9517] = arg2
    mem[9549] = arg3
    mem[9581] = 0xbbf060a065c918022006699da8e300b0ca152706
    mem[9613] = arg4
    mem[9645] = 0x561c56b6ea927c157a9f51fcccfa50b777c1ea7c
    mem[9677] = 288
    mem[9741] = arg5.length
    mem[9773 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + 9773] = 0
    mem[9709] = floor32(arg5.length) + 320
    mem[floor32(arg5.length) + 9773] = arg6.length
    create contract with 0 wei
                    code: code.data[2550 len 9357], address(arg3), address(arg1), address(arg2), arg3, 0xbbf060a065c918022006699da8e300b0ca152706, address(arg4), 0x561c56b6ea927c157a9f51fcccfa50b777c1ea7c, Array(len=floor32(arg5.length) + 320, data=arg5.length, mem[9773 len floor32(arg5.length) + 32], call.data[arg6 + 36 len floor32(arg6.length)])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[356 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + 356] = 0
    mem[floor32(arg5.length) + 356] = arg6.length
    require ext_code.size(0x6a019fac4954af6019836d3769920122fbf3b3be)
    call 0x6a019fac4954af6019836d3769920122fbf3b3be.0xe8dbe24 with:
         gas gas_remaining wei
        args 0, 0, address(arg2), address(arg3), address(create.new_address), address(arg4), 224, floor32(arg5.length) + 256, arg5.length, mem[356 len floor32(arg5.length) + 32], call.data[arg6 + 36 len floor32(arg6.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[12 len 20], address(ext_call.return_data[32])
}

function createBondAndTreasury(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5) payable {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    if policyAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    create contract with 0 wei
                    code: code.data[11907 len 2888], address(arg1), arg3
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len 9357] = code.data[2550 len 9357]
    mem[9453] = address(create.new_address)
    mem[9485] = arg1
    mem[9517] = arg2
    mem[9549] = 0xa82422a5fd4f9cb85cd4aac393cd3296a27dd873
    mem[9581] = 0xbbf060a065c918022006699da8e300b0ca152706
    mem[9613] = arg3
    mem[9645] = 0x561c56b6ea927c157a9f51fcccfa50b777c1ea7c
    mem[9677] = 288
    mem[9741] = arg4.length
    mem[9773 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 9773] = 0
    mem[9709] = floor32(arg4.length) + 320
    mem[floor32(arg4.length) + 9773] = arg5.length
    create contract with 0 wei
                    code: code.data[2550 len 9357], address(create.new_address), address(arg1), address(arg2), 0xa82422a5fd4f9cb85cd4aac393cd3296a27dd873, 0xbbf060a065c918022006699da8e300b0ca152706, address(arg3), 0x561c56b6ea927c157a9f51fcccfa50b777c1ea7c, Array(len=floor32(arg4.length) + 320, data=arg4.length, mem[9773 len floor32(arg4.length) + 32], call.data[arg5 + 36 len floor32(arg5.length)])
    mem[356 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 356] = 0
    mem[floor32(arg4.length) + 356] = arg5.length
    require ext_code.size(0x6a019fac4954af6019836d3769920122fbf3b3be)
    call 0x6a019fac4954af6019836d3769920122fbf3b3be.0xe8dbe24 with:
         gas gas_remaining wei
        args 0, 0, address(arg2), address(create.new_address), address(create.new_address), address(arg3), 224, floor32(arg4.length) + 256, arg4.length, mem[356 len floor32(arg4.length) + 32], call.data[arg5 + 36 len floor32(arg5.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[12 len 20], address(ext_call.return_data[32])
}



}

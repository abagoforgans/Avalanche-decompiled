contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function createMulitSig(address[] arg1, uint16[] arg2, uint16 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 12562] = code.data[807 len 12562]
    mem[(32 * arg1.length) + (32 * arg2.length) + 12786] = arg3
    mem[(32 * arg1.length) + (32 * arg2.length) + 12722] = 96
    mem[(32 * arg1.length) + (32 * arg2.length) + 12818] = arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 12850 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(32 * arg1.length) + (32 * arg2.length) + 12754] = (32 * arg1.length) + 128
    mem[(64 * arg1.length) + (32 * arg2.length) + 12850] = arg2.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 12882 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    create contract with 0 wei
                    code: code.data[807 len 12562], Array(len=arg3 << 240, data=arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 12850 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 128
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 32
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    emit Created(mem[(32 * arg1.length) + (32 * arg2.length) + 160 len (96 * arg1.length) + 64], address(create.new_address));
    return address(create.new_address)
}



}

contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_4d8fd0ee(?) payable {
    require calldata.size - 4 >= 224
    require ext_code.size(uint32(arg6 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 128)
    staticcall uint32(arg6 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 128.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'BI'
    require ext_code.size(address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae))
    staticcall address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae).0x1ad0cdb5 with:
            gas gas_remaining wei
           args Mask(128, 64, arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 64, arg1, arg6 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae << 224, Mask(160, 32, arg6 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) >> 32
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(uint64(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96)
    staticcall uint64(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96.0x1ad0cdb5 with:
            gas gas_remaining wei
           args arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae << 128, ext_call.return_data[0], Mask(160, 32, arg6 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 64, Mask(96, 0, arg7 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 64
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'EM'
    require ext_code.size(Mask(160, 32, arg6 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) >> 32)
    staticcall Mask(160, 32, arg6 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) >> 32.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 420 len 224] = Mask(32, 224, sha3(0xfe65786368616e67654578616374496e28616464726573732c75696e743235362c75696e743235362c616464726573732c616464726573732c75696e74313238)) >> 224, Mask(128, 64, arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 32, 0, arg1, 0, arg6 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae << 224, Mask(160, 32, arg6 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 64, 0, mem[(6 * ceil32(return_data.size)) + 420 len 28]
    delegate address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae).mem[(6 * ceil32(return_data.size)) + 420 len 4] with:
         gas gas_remaining wei
        args mem[(6 * ceil32(return_data.size)) + 424 len 192]
    require delegate.return_code
    require ext_code.size(Mask(160, 32, arg6 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) >> 32)
    staticcall Mask(160, 32, arg6 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) >> 32.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(Mask(96, 0, arg7 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 64)
    staticcall Mask(96, 0, arg7 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 64.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not return_data.size:
        mem[(8 * ceil32(return_data.size)) + 744 len 224] = Mask(32, 224, sha3(0xfe65786368616e67654578616374496e28616464726573732c75696e743235362c75696e743235362c616464726573732c616464726573732c75696e74313238)) >> 224, arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae << 128, 0, 0, Mask(160, 32, arg6 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 64, arg7 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae << 160, 0, mem[(8 * ceil32(return_data.size)) + 744 len 28]
        delegate (uint64(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96).mem[(8 * ceil32(return_data.size)) + 744 len 4] with:
             gas gas_remaining wei
            args mem[(8 * ceil32(return_data.size)) + 748 len 192]
    else:
        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 745 len 224] = Mask(32, 224, sha3(0xfe65786368616e67654578616374496e28616464726573732c75696e743235362c75696e743235362c616464726573732c616464726573732c75696e74313238)) >> 224, arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae << 128, 0, 0, Mask(160, 32, arg6 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 64, arg7 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae << 160, 0, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 745 len 28]
        delegate (uint64(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96).mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 745 len 4] with:
             gas gas_remaining wei
            args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 749 len 192]
    require delegate.return_code
    require ext_code.size(Mask(96, 0, arg7 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 64)
    staticcall Mask(96, 0, arg7 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 64.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(uint32(arg6 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 128)
    staticcall uint32(arg6 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 128.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != ext_call.return_data[0] - arg1:
        revert with 0, 'IN'
    if 0 < arg2:
        revert with 0, 'OU'
}

function sub_c5e23ed4(?) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(Mask(128, 64, arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) >> 64)
    staticcall Mask(128, 64, arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) >> 64.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not arg1:
        require ext_code.size(address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae))
        staticcall address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae).0x1ad0cdb5 with:
                gas gas_remaining wei
               args arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae << 192, ext_call.return_data[0], Mask(128, 64, arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 64, uint128(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 32
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < arg2:
            revert with 0, 'EM'
        require ext_code.size(uint128(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 32)
        staticcall uint128(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 32.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 420 len 224] = Mask(32, 224, sha3(0xfe65786368616e67654578616374496e28616464726573732c75696e743235362c75696e743235362c616464726573732c616464726573732c75696e74313238)) >> 224, uint64(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 160, 0, ext_call.return_data[0], 0, Mask(128, 64, arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 64, arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae << 128, 0, mem[(4 * ceil32(return_data.size)) + 420 len 28]
        delegate address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae).mem[(4 * ceil32(return_data.size)) + 420 len 4] with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + 424 len 192]
        require delegate.return_code
        require ext_code.size(uint128(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 32)
        staticcall uint128(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 32.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(Mask(128, 64, arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) >> 64)
        staticcall Mask(128, 64, arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) >> 64.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 'IN'
    else:
        if ext_call.return_data[0] < arg1:
            revert with 0, 'BI'
        require ext_code.size(address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae))
        staticcall address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae).0x1ad0cdb5 with:
                gas gas_remaining wei
               args arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae << 192, arg1, Mask(128, 64, arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 64, uint128(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 32
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < arg2:
            revert with 0, 'EM'
        require ext_code.size(uint128(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 32)
        staticcall uint128(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 32.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 420 len 224] = Mask(32, 224, sha3(0xfe65786368616e67654578616374496e28616464726573732c75696e743235362c75696e743235362c616464726573732c616464726573732c75696e74313238)) >> 224, uint64(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 160, 0, arg1, 0, Mask(128, 64, arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 64, arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae << 128, 0, mem[(4 * ceil32(return_data.size)) + 420 len 28]
        delegate address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae).mem[(4 * ceil32(return_data.size)) + 420 len 4] with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + 424 len 192]
        require delegate.return_code
        require ext_code.size(uint128(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 32)
        staticcall uint128(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 32.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(Mask(128, 64, arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) >> 64)
        staticcall Mask(128, 64, arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) >> 64.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] != ext_call.return_data[0] - arg1:
            revert with 0, 'IN'
    if 0 < arg2:
        revert with 0, 'OU'
}



}

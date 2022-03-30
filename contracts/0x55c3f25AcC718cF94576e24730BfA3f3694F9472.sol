contract main {




// =====================  Runtime code  =====================


array of struct stor0;
mapping of uint8 stor1;
address stor2;
uint256 stor3;
uint256 stor3;

function _fallback() payable {
    revert
}

function getStock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = stor0[arg1].field_0
    idx = 128
    s = 0
    while stor0[arg1].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1].length, data=mem[128 len stor0[arg1].length]), bool(stor1[arg1])
}

function sub_0761b80e(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.isAdmin(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'only Admin can do this action'
    stor1[arg1] = 0
    emit 0x95dc5cd0: arg1
}

function sub_1b28d04f(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.isAdmin(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'only Admin can do this action'
    stor1[arg1] = 1
    emit 0x4d90ea9b: arg1
}

function sub_357360d0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(stor2)
    staticcall stor2.isAdmin(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor2)
        staticcall stor2.isUser(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        43,
                        0xfe796f7520646f206e6f7420686176652074686520726967687420746f20646f207468697320616374696f,
                        mem[ceil32(arg1.length) + 239 len 21]
    stor0[arg2][].field_0 = Array(len=arg1.length, data=arg1[all])
    emit 0x18ec7f2d: 0, Mask(224, 0, arg2)
}

function sub_bba188ff(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(stor2)
    staticcall stor2.isAdmin(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor2)
        staticcall stor2.isUser(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        43,
                        0xfe796f7520646f206e6f7420686176652074686520726967687420746f20646f207468697320616374696f,
                        mem[ceil32(arg1.length) + 239 len 21]
    uint256(stor3)++
    stor0[uint256(stor3)][].field_0 = Array(len=arg1.length, data=arg1[all])
    emit 0x649e30d2: 0, Mask(224, 0, stor3)
    require ext_code.size(stor2)
    staticcall stor2.isAdmin(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'only Admin can do this action'
    stor1[uint256(stor3)] = 0
    emit 0x95dc5cd0: 0, Mask(224, 0, stor3)
}



}

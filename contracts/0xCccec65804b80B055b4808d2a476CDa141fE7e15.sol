contract main {




// =====================  Runtime code  =====================


bool stor0; offset 256
uint8 stor0;
address stor0; offset 8
address stor1;
mapping of uint8 stor2;
mapping of uint256 stor3;

function _fallback() payable {
    revert
}

function sub_ef2b81f7(?) {
    require stor2[msg.sender]
    stor3[msg.sender] = 0
    call msg.sender with:
       value stor3[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ca039ce6(?) {
    require msg.sender == address(stor0.field_8)
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require not uint8(stor0.field_0)
    uint8(stor0.field_0) = 1
    address(stor0.field_8) = 0xa09783c8abc35dda5dde56375a2c39f0c7dcc10d
    stor0.field_256 % 1 = 0
    stor2[msg.sender] = 1
    stor2[address(stor0.field_8)] = 1
    stor1 = arg1
    require ext_code.size(arg1)
    call arg1.0x1aa3a008 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e5845fee(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require stor2[msg.sender]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function sub_88a8c32a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor2[msg.sender]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d49daa66(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require stor2[msg.sender]
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2, ext_call.return_data[0], 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_87dff081(?) payable {
    require calldata.size - 4 >= 64
    require stor2[msg.sender]
    stor3[msg.sender] = msg.value
    if not stor1:
        revert with 0, 'buyer?'
    require ext_code.size(0x8d01c8ee82e581e55c02117a676b5bbd4734fabb)
    staticcall 0x8d01c8ee82e581e55c02117a676b5bbd4734fabb.minted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x45795ba1ef4de0ff9281fdcada1cb2c3642b0c26)
    call 0x45795ba1ef4de0ff9281fdcada1cb2c3642b0c26.seed() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 + 1 == ext_call.return_data[0] + 1:
        if arg2 == ext_call.return_data[0]:
            if ext_call.return_data[30 len 2] % 100 <= 11:
                if ext_call.return_data[0] % 2048 >> 245 % 10:
                    require ext_code.size(stor1)
                    call stor1.0xe3878436 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value stor3[msg.sender] wei
                         gas 2300 * is_zero(value) wei
                    stor3[msg.sender] = 0
}



}

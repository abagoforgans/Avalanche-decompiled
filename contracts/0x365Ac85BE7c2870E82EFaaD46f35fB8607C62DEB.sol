contract main {




// =====================  Runtime code  =====================


bool stor0; offset 256
uint8 stor0;
address stor0; offset 8
uint256 stor0; offset 8
address stor1;
mapping of uint8 stor2;
mapping of uint256 stor3;
uint8 stor439E;

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

function sub_4eb07c95(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor2[msg.sender]
    stor1 = address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).0x1aa3a008 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d1b0c3b9(?) payable {
    require calldata.size - 4 >= 32
    require stor2[msg.sender]
    stor3[msg.sender] = msg.value
    if arg1 == eth.balance(0x8be4d094be44d401c77701579092982cd03ce7e8):
        call msg.sender with:
           value stor3[msg.sender] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor3[msg.sender] = 0
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require not uint8(stor0.field_0)
    uint8(stor0.field_0) = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, msg.sender)
    stor0.field_256 % 1 = 0
    stor2[msg.sender] = 1
    stor439E = 1
    stor1 = arg1
    require ext_code.size(arg1)
    call arg1.0x1aa3a008 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_91c53aca(?) {
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

function sub_182876ad(?) payable {
    require calldata.size - 4 >= 96
    require stor2[msg.sender]
    stor3[msg.sender] = msg.value
    require ext_code.size(0x75c95c8e779b2fe9dd36c9fbdfa98d7eb06bc44b)
    staticcall 0x75c95c8e779b2fe9dd36c9fbdfa98d7eb06bc44b.tokensMinted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == arg1:
        if arg2 == eth.balance(0x8be4d094be44d401c77701579092982cd03ce7e8):
            require ext_code.size(stor1)
            call stor1.0x59b9021e with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value stor3[msg.sender] wei
                 gas 2300 * is_zero(value) wei
            stor3[msg.sender] = 0
}



}

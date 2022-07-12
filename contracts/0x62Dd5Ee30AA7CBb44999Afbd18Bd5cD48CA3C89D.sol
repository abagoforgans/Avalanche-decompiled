contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0;
address stor0; offset 8
mapping of uint8 stor1;
mapping of uint256 stor2;

function _fallback() payable {
    revert
}

function initialize() {
    require not uint8(stor0.field_0)
    uint8(stor0.field_0) = 1
    address(stor0.field_8) = 0xb0ddaf65bd972e2bfd078c42d78fe07584d2ce1c
    stor1[address(msg.sender)] = 1
    stor1[address(stor0.field_0)] = 1
}

function sub_ca039ce6(?) {
    require msg.sender == address(stor0.field_8)
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ef2b81f7(?) {
    require stor1[address(msg.sender)]
    stor2[address(msg.sender)] = 0
    call msg.sender with:
       value stor2[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_90ca8dc5(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require stor1[address(msg.sender)]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function sub_88a8c32a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor1[address(msg.sender)]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
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
    require arg2 == arg2
    require stor1[address(msg.sender)]
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2, ext_call.return_data[0], 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_34f920d4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require stor1[address(msg.sender)]
    stor2[address(msg.sender)] = msg.value
    require ext_code.size(0x9cd2102eed7d3133608a01aebc5f0a2016272fa7)
    staticcall 0x9cd2102eed7d3133608a01aebc5f0a2016272fa7.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] == arg1:
        if sha3(block.difficulty, block.timestamp, msg.sender, arg2) % 100 >= 90:
            call msg.sender with:
               value stor2[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor2[address(msg.sender)] = 0
}



}

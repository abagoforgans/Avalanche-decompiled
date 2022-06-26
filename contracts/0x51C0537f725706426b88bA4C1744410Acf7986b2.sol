contract main {




// =====================  Runtime code  =====================


bool stor0; offset 256
uint8 stor0;
address stor0; offset 8
array of address stor1;
uint256 sub_7d8d681f;
mapping of uint8 stor3;

function sub_7d8d681f(?) {
    return sub_7d8d681f
}

function _fallback() payable {
    revert
}

function register() {
    require stor3[tx.origin]
    stor3[msg.sender] = 1
}

function sub_3bbce03d(?) {
    require calldata.size - 4 >= 32
    require stor3[msg.sender]
    sub_7d8d681f = arg1
}

function sub_e3878436(?) {
    require stor3[msg.sender]
    call tx.origin with:
       value sub_7d8d681f wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ca039ce6(?) {
    require stor3[msg.sender]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8a6b43e0(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require stor3[msg.sender]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function initialize() {
    require not uint8(stor0.field_0)
    uint8(stor0.field_0) = 1
    address(stor0.field_8) = 0x4960bc6032351ab87627b8f36b37b4938a44c7ef
    stor0.field_256 % 1 = 0
    mem[96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[128] = 0x4960bc6032351ab87627b8f36b37b4938a44c7ef
    stor1.length = 2
    s = 0
    idx = 96
    while 160 > idx:
        address(stor1[s]) = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor1.length > idx:
        uint256(stor1[idx]) = 0
        idx = idx + 1
        continue 
    sub_7d8d681f = 14 * 10^17
    stor3[msg.sender] = 1
}

function sub_88a8c32a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor3[msg.sender]
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



}

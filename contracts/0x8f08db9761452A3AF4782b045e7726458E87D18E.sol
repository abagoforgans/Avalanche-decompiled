contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address wETHAddress;
address sub_cd86f262Address;

function getWETHAddress() {
    return wETHAddress
}

function sub_cd86f262(?) {
    return sub_cd86f262Address
}

function _fallback() payable {
    revert
}

function sub_800ca60c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'No authority'
    stor1 = address(arg1)
}

function setWETHAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'No authority'
    wETHAddress = arg1
}

function sub_93e8411b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'No authority'
    sub_cd86f262Address = address(arg1)
}

function testCreateToken() {
    if stor0 != msg.sender:
        revert with 0, 'No authority'
    create2 contract with 0 wei
                    salt: 0
                    code: code.data[3097 len 1050]
    sub_cd86f262Address = address(create2.new_address)
}

function createToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'No authority'
    create2 contract with 0 wei
                    salt: arg1
                    code: code.data[3097 len 1050]
    return address(create2.new_address)
}

function turnOutETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'No authority'
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5e6cfd5a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'No authority'
    require ext_code.size(address(arg1))
    call address(arg1).0x6a4234eb with:
         gas gas_remaining wei
        args wETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTokenBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'No authority'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cac6dccc(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor0 != msg.sender:
        revert with 0, 'No authority'
    require ext_code.size(stor1)
    call stor1.anySwapOutUnderlyingWithPermit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8, uint256 arg9) with:
         gas gas_remaining wei
        args 0, 0, address(arg1), stor0, arg3, 0, 0, 0, 0, 56
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_553500b4(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'No authority'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'wrong'
    if stor0 != msg.sender:
        revert with 0, 'No authority'
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = 1050
    create2 contract with 0 wei
                    salt: 0
                    code: code.data[3097 len 1050]
    sub_cd86f262Address = address(create2.new_address)
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 4).length
        _100 = mem[(32 * idx) + 128]
        require idx < ('cd', 36).length
        _103 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        if stor0 != msg.sender:
            revert with 0, 'No authority'
        mem[floor32((32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 1273)] = 0x8d7d3eea00000000000000000000000000000000000000000000000000000000
        mem[floor32((32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 1273) + 4] = address(_100)
        mem[floor32((32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 1273) + 36] = sub_cd86f262Address
        mem[floor32((32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 1273) + 68] = stor0
        mem[floor32((32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 1273) + 100] = _103
        mem[floor32((32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 1273) + 132] = 0
        mem[floor32((32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 1273) + 164] = 0
        mem[floor32((32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 1273) + 196] = 0
        mem[floor32((32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 1273) + 228] = 0
        mem[floor32((32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 1273) + 260] = 56
        require ext_code.size(stor1)
        call stor1.anySwapOutUnderlyingWithPermit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8, uint256 arg9) with:
             gas gas_remaining wei
            args address(_100), sub_cd86f262Address, stor0, _103, 0, 0, 0, 0, 56
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require ext_code.size(sub_cd86f262Address)
    call sub_cd86f262Address.0x1073eed with:
         gas gas_remaining wei
        args wETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wETHAddress)
    staticcall wETHAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor0 != msg.sender:
        revert with 0, 'No authority'
    require ext_code.size(wETHAddress)
    call wETHAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
